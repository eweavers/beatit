<?php

class sessions {
  private $last_time;
  private $last_times = Array();
  private $last_timenew = Array();
  public $logsess = false;

  public function logout(){
    session_unset();
    session_destroy();
    $logoutnow = Array('Good');
    echo json_encode($logoutnow);
    
  }

  public function domainLocked(){
    if(preg_match('/beatitethanweavers/', $_SERVER['REQUEST_URI'])){
      return true;
    }else{
      return false;
    }

  }

  public function assignlogsess($username, $rows){
    $_SESSION['username'] = $username;
    $_SESSION['loginID'] = $rows['loginID'];
    $_SESSION['userID'] = $rows['userID'];
    $_SESSION['login'] = true;
    $logsess = true;
    
  }

  public function check_1second() {
    array_push($this->last_times, time());
    $amount = 0;
    foreach ($this->last_times as $item){
      if ($item == time()){
        $amount++;
      }
    }
      if($amount > 4) {
        return false;
      }else{
        return true;
      }
  }
// This rate limit retrieves the time function and subtracts from the current time and makes sure that its less than 86400 which is 24hours
  public function check_24h() {
    if(sizeof($this->last_times) > 0){
      foreach ($this->last_times as $result){
        if (time() - $result < 60*60*24){
          array_push($this->last_timenew, $result);
        }
      }
      $this->last_times = $this->last_timenew;
      unset($this->last_times);
      if(sizeof($this->last_timenew) > 500){
        return false;
      }else{
        return true;
      }
    }
  }

  public function is_rate_limited() {
    if($this->check_1second() == true AND
    $this->check_24h() == true) {
      return false;
    } else {
      return true;
    }
  }

// print_r($last_time)


};
// $_SESSION['last_time'] = time();
// //log the current time into the array;
// array_push($_SESSION['last_times'], time());

?>
