<?php
header('Content-Type: application/json');
header('Accept: application/json');


class database {
  private $conn;
  public function __construct() {
    try{
      $this->conn = new PDO ("mysql:host=localhost;dbname=timetobeat", 'root', '');
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    }
    catch(PDOexception $e)
    {
      echo $e;
    }
  }
  public function receiveuserid($username, $passw0rd){
    try{
    $stmt = $this->conn->prepare("SELECT login.password, login.username, login.loginID, login.accessRights, users.userID FROM login RIGHT JOIN users ON login.loginID = users.loginID
      WHERE username=:user");
      $stmt->bindParam(':user', $username);
      $stmt->execute();
      $rows = $stmt -> fetch(PDO::FETCH_ASSOC);

      if (password_verify($passw0rd, $rows['password'])){
        $_SESSION['seshob']->assignlogsess($username, $rows);
      }else{
        $_SESSION['login'] = false;
      }
      
    }  catch (PDOException $ex) {
        throw $ex;
      }
    }

    public function gamerequests($gametitle, $platforms, $gamedes, $released, $file, $userID) {
      try {
        $stmt = $this->conn->prepare("INSERT INTO gamereqs(gametitle, platforms, gamedescription, releasedate, thumbnailurl, userID)
        VALUES (:gametitle, :platforms, :gamedescription, :releasedate, :thumbnailurl, :userID)");
        $stmt->bindValue(':gametitle', $gametitle);
        $stmt->bindValue(':platforms', $platforms);
        $stmt->bindValue(':gamedescription', $gamedes);
        $stmt->bindValue(':releasedate', $released);
        $stmt->bindValue(':thumbnailurl', $file);
        $stmt->bindValue(':userID', $userID);
        $stmt->execute();
      }
      catch (PDOException $ex) {
        throw $ex;
      }
    }

    public function submissions($nplay, $cplay, $srun, $gameID, $userID) {
      try {
        $stmt = $this->conn->prepare("INSERT INTO submissions(mainhrs, completehrs, speedrunhrs, gameID, userID)
        VALUES (:nplay, :cplay, :srun, :gameID, :userID)");
        $stmt->bindValue(':nplay', $nplay);
        $stmt->bindValue(':cplay', $cplay);
        $stmt->bindValue(':srun', $srun);
        $stmt->bindValue(':gameID', $gameID);
        $stmt->bindValue(':userID', $userID);
        $stmt->execute();
      }
      catch (PDOException $ex) {
        throw $ex;
      }
    }


    public function register($username, $password, $fname, $lname, $email){
      try {
        $this->conn->beginTransaction();
        $stmt = $this->conn->prepare("INSERT INTO login(username, password) VALUES (:username, :password)");
        $stmt->bindValue(':username', $username);
        $stmt->bindValue(':password', $password);
        $stmt->execute();
        // last inserted = table1ID
        $lastID = $this->conn->lastInsertId();
        $stmt = $this->conn->prepare("INSERT INTO users(firstName, lastName, email, loginID) VALUES (:firstName, :lastName, :email, :loginID)");
        $stmt->bindValue(':firstName', $fname);
        $stmt->bindValue(':lastName', $lname);
        $stmt->bindValue(':email', $email);
        $stmt->bindValue(':loginID', $lastID);
        $stmt->execute();
        $this->conn->commit();
      }
      catch (PDOException $ex) {
        $this->conn->rollBack();
        throw $ex;
      }
    }

    public function mainselectofgames()
    {
      try {
        $stmt = $this->conn->prepare('SELECT games.gameID, games.gametitle, games.thumbnailurl,
          ROUND(AVG(submissions.completehrs),1) AS com, ROUND(AVG(submissions.mainhrs),1) AS main, ROUND(AVG(submissions.speedrunhrs),1) AS speed
          FROM games LEFT JOIN submissions ON games.gameID = submissions.gameID GROUP BY gameID');
          $stmt->execute();
          $result = $stmt-> fetchAll(PDO::FETCH_ASSOC);
          echo json_encode($result);
        }
        catch (PDOException $ex) {
          throw $ex;
        }
      }

      public function popgamefield()
      {
        try {
          $stmt = $this->conn->prepare('SELECT games.gameID, games.gametitle FROM games');
            $stmt->execute();
            $result = $stmt-> fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($result);
          }
          catch (PDOException $ex) {
            throw $ex;
          }
        }



    public function mainselectofrgames()
      {
        try {
          $stmt = $this->conn->prepare('SELECT gamereqs.gamerID, gamereqs.gametitle, gamereqs.thumbnailurl
            FROM gamereqs GROUP BY gamerID');
            $stmt->execute();
            $result = $stmt-> fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($result);
          }
          catch (PDOException $ex) {
            throw $ex;
          }
        }

      public function gameview($gameid)
      {
        try{
          $stmt = $this->conn->prepare("SELECT * FROM games WHERE gameid=".$gameid."");
          $stmt->execute();
          $result = $stmt-> fetchAll(PDO::FETCH_ASSOC);
          echo json_encode($result);
        }
        catch(PDOException $ex) {
          throw $ex;
        }
      }

      public function rgameview($gamerid)
      {
        try{
          $stmt = $this->conn->prepare("SELECT * FROM gamereqs WHERE gamerid=".$gamerid."");
          $stmt->execute();
          $result = $stmt-> fetchAll(PDO::FETCH_ASSOC);
          echo json_encode($result);
        }
        catch(PDOException $ex) {
          throw $ex;
        }
      }

      public function log() {
        if(!isset($_SERVER['HTTP_REFERER'])){
          try {
            $stmt = $this->conn->prepare("INSERT INTO log(requestedurl, sessionid, sourceip, timestamp)
            VALUES (:requestedurl, :sessionid, :sourceip, CURRENT_TIMESTAMP)");
            $stmt->bindValue(':requestedurl', $_SERVER['REQUEST_URI']);
            $stmt->bindValue(':sessionid', session_id());
            $stmt->bindValue(':sourceip', $_SERVER['REMOTE_ADDR']);
            $stmt->execute();
          }
          catch (PDOException $ex) {
            throw $ex;
          }
        }else {
          try {
            $stmt = $this->conn->prepare("INSERT INTO log(referrer, requestedurl, sessionid, sourceip, timestamp)
            VALUES (:referrer, :requestedurl, :sessionid, :sourceip, CURRENT_TIMESTAMP)");
            $stmt->bindValue(':referrer', $_SERVER['HTTP_REFERER']);
            $stmt->bindValue(':requestedurl', $_SERVER['REQUEST_URI']);
            $stmt->bindValue(':sessionid', session_id());
            $stmt->bindValue(':sourceip', $_SERVER['REMOTE_ADDR']);
            $stmt->execute();
          }
          catch (PDOException $ex) {
            throw $ex;
          }
        }
      }

    };

    $databasefunk = new database;
    //I instantiated the database object here so i can call the database functions through the webservice
    ?>
