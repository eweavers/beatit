<?php
include('model/datab.php');
include('model/session.php');
include('model/validateob.php');
header('Content-Type: text/json; charset=UTF-8');
session_start();


//I check to see if the session is set here and if it isnt then I set it
if (!isset($_SESSION['seshob'])) {
  $_SESSION['seshob'] = new sessions;
  //I instantiated the session object here so I can call the functions from the webservice
  $databasefunk->log();
}

if ($_SESSION['seshob']->is_rate_limited() == true or $_SESSION['seshob']->domainLocked() == false) {
  echo json_encode($data = Array('error' => 'You have been locked'));
  die();
}


if (isset($_POST['form_id'])) {
  switch ($_POST['form_id']) {
    case 'login':
      if (!empty([$_POST])) {
        if (isset($_POST['username'])) {
          $string = $_POST['username'];
          $validation_method = 'username';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('username is invalid');
            $checko = false;
            die();
          } else {
            $username = $_POST['username'];
            $validation->testuser($username);
          }
        }
        if (isset($_POST['password'])) {
          $string = $_POST['password'];
          $validation_method = 'username';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('password is invalid');
            $checko = false;
            die();
          } else {
            $passw0rd = $_POST['password'];
            $validation->testuser($passw0rd);
          }
        }
        
        
        $databasefunk->receiveuserid($username, $passw0rd);
        if ($_SESSION['login'] == true) {
          $logms = array("Correct login");
          echo json_encode($logms);
        } else {
          $logms = array("Incorrect login");
          echo json_encode($logms);
        }
       }

      break;
    case 'requestagame':
      $checko = true;
      if (isset($_SESSION['login'])) {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
          if (isset($_FILES['files'])) {
            $errors = [];
            $path = 'uploads/';
            $uploadOk = 1;
            $all_files = count($_FILES['files']['tmp_name']);

            for ($i = 0; $i < $all_files; $i++) {
              $file_name = $_FILES['files']['name'][$i];
              $file_tmp = $_FILES['files']['tmp_name'][$i];
              $file_type = $_FILES['files']['type'][$i];
              $file_size = $_FILES['files']['size'][$i];

              $file = $path . $file_name;

              if ($file_size > 2097152) {
                echo json_encode("'File size exceeds limit: ' . $file_name . ' ' . $file_type");
                $uploadOk = 0;
              }

              if (
                $file_type != "image/jpg" && $file_type != "image/png" && $file_type != "image/jpeg"
                && $file_type != "gif"
              ) {
                echo json_encode("Sorry, only JPG, JPEG, PNG & GIF files are allowed.");
                $uploadOk = 0;
                echo $file_type;
              }

              if ($uploadOk == 0) {
                echo json_encode("Sorry, your file was not uploaded.");
              } else {
                move_uploaded_file($file_tmp, $file);
              }
            }
          }
        }

        
       $gametitle = $_POST['gametitle'];
       $validation->testuser($gametitle);


        $released = $_POST['irelease'];

        $gamedes = $_POST['gdesc'];
        $validation->testuser($gamedes);
        

        $platforms = $_POST['platforms'];


        if ($checko == false) {
          $msgreq = Array('invalid');
          echo json_encode($msgreq);
        } else {
          try {
            if ($_POST['form_id'] == 'requestagame' and isset($_SESSION['userID'])) {
              $userID = $_SESSION['userID'];
              $querySuccess = $databasefunk->gamerequests($gametitle, $platforms, $gamedes, $released, $file, $userID);
              $msgreq = Array('Successfully requested');
              echo json_encode($msgreq);
            } else if(!isset($_SESSION['userID'])){
              $msgreq = Array('You must be logged in');
              echo json_encode($msgreq);
            }else{
              $msgreq = Array('incorrect');
              echo json_encode($msgreq);
            }
          } catch (PDOException $e) {
            echo json_encode("Account creation problems" . $e->getMessage());
            die();
          }
        }
      } else {
        $msgreq = Array('You must be logged in');
        echo json_encode($msgreq);
      }

      break;
    case 'register':
      if (!empty($_POST)) {
        if (isset($_POST['username'])) {
          $string = $_POST['username'];
          $validation_method = 'username';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('username is invalid');
            $checko = false;
            die();
          } else {
            $username = $_POST['username'];
            $validation->testuser($username);
            $checko = true;
          }
        }

        if (isset($_POST['password'])) {
          $string = $_POST['password'];
          $validation_method = 'username';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('password is invalid');
            $checko = false;
            die();
          } else {
            $mypass = $_POST['password'];
            $validation->testuser($mypass);
            $checko = true;
          }
        }

        if (isset($_POST['firstName'])) {
          $string = $_POST['firstName'];
          $validation_method = 'char';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('firstname is invalid');
            $checko = false;
            die();
          } else {
            $fname = $_POST['firstName'];
            $validation->testuser($fname);
            $checko = true;
          }
        }

        if (isset($_POST['lastName'])) {
          $string = $_POST['lastName'];
          $validation_method = 'char';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('last name is invalid');
            $checko = false;
            die();
          } else {
            $lname = $_POST['lastName'];
            $validation->testuser($lname);
            $checko = true;
          }
        }

        if (isset($_POST['email'])) {
          $string = $_POST['email'];
          $validation_method = 'email';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('email is invalid');
            $checko = false;
            die();
          } else {
            $email = $_POST['email'];
            $validation->testuser($email);
            $checko = true;
          }
        }
        $password = password_hash($mypass, PASSWORD_DEFAULT);
        if ($checko == false) {
          echo json_encode('invalid');
        } else {
          try {
            if ($_POST['form_id'] == 'register') {
              $querySuccess = $databasefunk->register($username, $password, $fname, $lname, $email);
              $reg = Array("Successfully registered");
              echo json_encode($reg);
            } else {
              $reg = Array("You didn't sucessfully register");
              echo json_encode($reg);
            }
          } catch (PDOException $e) {
            echo json_encode("Account creation problems" . $e->getMessage());
            die();
          }
        }
      }
      break;
    case 'submittimes':
      if (isset($_SESSION['login'])) {

        if (isset($_POST['nplay'])) {
          $string = $_POST['nplay'];
          $validation_method = 'int';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('hours is invalid');
            $checko = false;
            die();
          } else {
            $nplay = $_POST['nplay'];
            $validation->testuser($nplay);
            $checko = true;
          }
        }

        if (isset($_POST['cplay'])) {
          $string = $_POST['cplay'];
          $validation_method = 'int';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('hours is invalid');
            $checko = false;
            die();
          } else {
            $cplay = $_POST['cplay'];
            $validation->testuser($cplay);
            $checko = true;
          }
        }

        if (isset($_POST['srun'])) {
          $string = $_POST['srun'];
          $validation_method = 'int';
          $answer = $validation->validate($string, $validation_method);
          if ($answer == false) {
            echo json_encode('hours is invalid');
            $checko = false;
            die();
          } else {
            $srun = $_POST['srun'];
            $validation->testuser($srun);
            $checko = true;

          }
        }

        if ($checko == false) {
          echo json_encode('invalid');
        } 
        try {
          if ($_POST['form_id'] == 'submittimes' and isset($_SESSION['userID'])) {
            $gameID = $_POST['gamesse'];
            $userID = $_SESSION['userID'];
            $querySuccess = $databasefunk->submissions($nplay, $cplay, $srun, $gameID, $userID);
            $msgsub = Array("Submission Successful");
            echo json_encode($msgsub);
            } else if(!isset($_SESSION['userID'])){
              $msgsub = Array("You must be logged in");
              echo json_encode($msgsub);
            } else{
              $msgsub = Array("Nah");
              echo json_encode($msgsub);
            }
          } catch (PDOException $e) {
            echo json_encode("Account creation problems" . $e->getMessage());
            die();
          }
        }else{
          $msgsub = Array("You must be logged in");
          echo json_encode($msgsub);
        }

      break;
    default:
      $msg = array('error' => 'doesnt exist');
      echo json_encode($msg);
      break;
  }
}


if (isset($_GET['page'])) {
  switch ($_GET['page']) {
    case 'showallgames':
      $databasefunk->mainselectofgames();
      $msg = array('success' => 'true');
      break;
    case 'viewgame':
      $gameid = $_GET['gameid'];
      $databasefunk->gameview($gameid);
      $msg = array('success' => 'true');
      break;
    case 'logout':
      $_SESSION['seshob']->logout();
      $msg = array('success' => 'true');
      break;
    case 'gamefieldsel':
      $databasefunk->popgamefield();
      $msg = array('success' => 'true');
      break;

    case 'viewrequestedgames':
      $databasefunk->mainselectofrgames();
      $msg = array('success' => 'true');
      break;
    case 'viewviewrequestedgames':
      $gamerid = $_GET['gamerid'];
      $databasefunk->rgameview($gamerid);
      $msg = array('success' => 'true');
      break;
    default:
      $msg = array('error' => 'doesnt exist');
      echo json_encode($msg);
      break;
  }
}
