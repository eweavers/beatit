M.AutoInit();


const loginform = document.getElementById('loginfor');
const registerform = document.getElementById('regfor');


function loginornot() {
  if (localStorage.getItem('LoggedIn') == 'true') {
    loginform.style.display = "none";
    registerform.style.display = "none";
    document.getElementById('logoutbutton').style.display = "block"
  } else {
    loginform.style.display = "block";
    registerform.style.display = "block";
    document.getElementById('logoutbutton').style.display = "none"
  }
}


const toggleSwitch = document.querySelector('.switch input[type="checkbox"]');
const currentTheme = localStorage.getItem('theme');

if (currentTheme) {
  document.documentElement.setAttribute('data-theme', currentTheme);

  if (currentTheme === 'dark') {
    toggleSwitch.checked = true;
  }
}

function switchTheme(e) {
  if (e.target.checked) {
    document.documentElement.setAttribute('data-theme', 'dark');
    localStorage.setItem('theme', 'dark');
  }
  else {
    document.documentElement.setAttribute('data-theme', 'light');
    localStorage.setItem('theme', 'light');
  }
}
toggleSwitch.addEventListener('change', switchTheme, false);


loginform.addEventListener('submit', function (e) {
  e.preventDefault();

  var formData = new FormData(this);
  formData.append('username', e.srcElement.username.value)
  formData.append('password', e.srcElement.password.value)

  fetch('ws.php', {
    method: 'POST',
    body: formData,
    credentials: 'include'
  }).then(
    function (response) {
      if (response.status !== 200) {
        console.log('Looks like there was a problem. Status Code: ' +
          response.status);
        return;
      }
      response.json().then(function (data) {
        if (data[0] == "Incorrect login") {
          M.toast({ html: 'Incorrect Login' })

        } else {
          M.toast({ html: 'You have successfully logged in' });

          localStorage.setItem('LoggedIn', true)

          loginform.style.display = "none";
          registerform.style.display = "none";
          document.getElementById('logoutbutton').style.display = "block"
        }

      })
    });
}
)

registerform.addEventListener('submit', function (e) {
  e.preventDefault();

  var formData = new FormData(this);
  formData.append('username', e.srcElement.username.value)
  formData.append('password', e.srcElement.password.value)
  formData.append('fname', e.srcElement.firstName.value)
  formData.append('lname', e.srcElement.lastName.value)
  formData.append('email', e.srcElement.email.value)

  fetch('ws.php', {
    method: 'POST',
    body: formData,
    credentials: 'include'
  }).then(
    function (response) {
      if (response.status !== 200) {
        console.log('Looks like there was a problem. Status Code: ' +
          response.status);
        return;
      }
      response.json().then(function (data) {
        if (data[0] == "Successfully registered") {
          M.toast({ html: 'You have successfully created an account' })
        } else {
          M.toast({ html: 'The Registration process failed' })
        }
      })

    });
}
)

const reqgameform = document.getElementById('reqfor');
reqgameform.addEventListener('submit', function (e) {
  e.preventDefault();

  var formData = new FormData(this);
  formData.append('gametitle', e.srcElement.gametitle.value)
  formData.append('platform', e.srcElement.platforms.value)
  formData.append('irelease', e.srcElement.irelease.value)
  formData.append('gdesc', e.srcElement.gdesc.value)

  fetch('ws.php', {
    method: 'POST',
    body: formData,
    credentials: 'include'
  }).then(
    function (response) {
      if (response.status !== 200) {
        console.log('Looks like there was a problem. Status Code: ' +
          response.status);
        return;
      }
      response.json().then(function (data) {
        if (data[0] == "You must be logged in") {
          M.toast({ html: 'You must be logged in to request a game' })
          M.toast({ html: 'You must be logged in to request a game' })
        }

        if (data[0] == "Successfully requested") {
          M.toast({ html: 'You have successfully requested' })
          M.toast({ html: 'You have successfully requested' })
        }
      })
    });
}
)

const submissionform = document.getElementById('subfor');
submissionform.addEventListener('submit', function (e) {
  e.preventDefault();

  var formData = new FormData(this);
  formData.append('gamesse', e.srcElement.gamesse.value)
  formData.append('gametitle', e.srcElement.nplay.value)
  formData.append('platform', e.srcElement.cplay.value)
  formData.append('irelease', e.srcElement.srun.value)

  fetch('ws.php', {
    method: 'POST',
    body: formData,
    credentials: 'include'
  }).then(
    function (response) {
      if (response.status !== 200) {
        console.log('Looks like there was a problem. Status Code: ' +
          response.status);
        return;
      }
      response.json().then(function (data) {
        if (data[0] == "You must be logged in") {
          M.toast({ html: 'You must be logged in' });
          M.toast({ html: 'You must be logged in' });
        } else if (data[0] == "Submission Successful") {
          M.toast({ html: 'You have successfully submit' });
          M.toast({ html: 'You have successfully submit' });
        } else {
          M.toast({ html: 'Submission Failed' });
          M.toast({ html: 'Submission Failed' });
        }
      })
    });
}
)

function form() {
  const url = 'ws.php'
  const form = document.querySelector('form')

  form.addEventListener('submito', e => {
    e.preventDefault()

    const files = document.querySelector('[type=file]').files
    const formData = new FormData()

    for (let i = 0; i < files.length; i++) {
      let file = files[i]

      formData.append('files[]', file)
    }

    fetch(url, {
      method: 'POST',
      body: formData,
    }).then(response => {
      console.log(response)
    })
  });
}

function showallrgames() {
  var url = 'ws.php?page=viewrequestedgames';
  var HTMLcode = '';
  var HTMLTemplate = showallrgames2.innerHTML;

  fetch(url, {
    method: 'GET',
    credentials: 'include'
  })
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
          for (var loop = 0; loop < data.length; loop++) {
            localStorage.setItem('allRGames', JSON.stringify(data));

            HTMLcode += HTMLTemplate.replace(/{{thumbnailurl}}/g, data[loop].thumbnailurl)
              .replace(/{{gametitle}}/g, data[loop].gametitle)
              .replace(/{{gamerid}}/g, data[loop].gamerID);
          }
          rgamelist.innerHTML = HTMLcode;

        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });
}

function popgamefield() {
  var url = 'ws.php?page=gamefieldsel';
  var HTMLcode = '';
  var HTMLTemplate = opgame.innerHTML;

  fetch(url, {
    method: 'GET',
    credentials: 'include'
  })
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
          for (var loop = 0; loop < data.length; loop++) {
            HTMLcode += HTMLTemplate.replace(/{{gameID}}/g, data[loop].gameID)
              .replace(/{{gametitle}}/g, data[loop].gametitle)
          }
          gamesse.innerHTML = HTMLcode;
          $('#gamesse').formSelect();

        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });
}


function populatergameinfo(gamerid) {
  var url = 'ws.php?page=viewviewrequestedgames&gamerid=' + gamerid;
  var HTMLcode = '';
  var HTMLTemplate = showrgameinfo.innerHTML;
  var id = 'gamerinfo' + gamerid;

  fetch(url, {
    method: 'GET',
    credentials: 'include'
  })
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
          for (var loop = 0; loop < data.length; loop++) {
            localStorage.setItem('gameRInfo', JSON.stringify(data));

            HTMLcode += HTMLTemplate.replace(/{{thumbnailurl}}/g, data[loop].thumbnailurl)
              .replace(/{{gametitle}}/g, data[loop].gametitle)
              .replace(/{{gamedesc}}/g, data[loop].gamedescription)
              .replace(/{{platforms}}/g, data[loop].platforms)
              .replace(/{{releasedate}}/g, data[loop].releasedate);
          }
          document.getElementById(id).innerHTML = HTMLcode;

          var id2 = document.getElementById(id);
          if (id2.style.display == "block") {
            id2.style.display = "none";
          } else {
            id2.style.display = "block";
          }

        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });
}

function populategameinfo(gameid) {
  var url = 'ws.php?page=viewgame&gameid=' + gameid;
  var HTMLcode = '';
  var HTMLTemplate = showgameinfo.innerHTML;
  var id = 'gameinfo' + gameid;

  fetch(url, {
    method: 'GET',
    credentials: 'include'
  })
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
          for (var loop = 0; loop < data.length; loop++) {
            localStorage.setItem('gameInfo', JSON.stringify(data));

            HTMLcode += HTMLTemplate.replace(/{{thumbnailurl}}/g, data[loop].thumbnailurl)
              .replace(/{{gametitle}}/g, data[loop].gametitle)
              .replace(/{{gamedesc}}/g, data[loop].gamedesc)
              .replace(/{{platforms}}/g, data[loop].platforms)
              .replace(/{{releasedate}}/g, data[loop].releasedate);
          }
          document.getElementById(id).innerHTML = HTMLcode;
          var id2 = document.getElementById(id);
          if (id2.style.display == "block") {
            id2.style.display = "none";
          } else {
            id2.style.display = "block";
          }
        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });
}

function logout() {
  var url = 'ws.php?page=logout';

  fetch(url)
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
          if (data[0] == "Good") {
            M.toast({ html: 'You have successfully logged out' });
          }
        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });

  localStorage.removeItem('gameInfo');
  localStorage.removeItem('allGames');
  localStorage.removeItem('allRGames');


  loginform.style.display = "block";
  registerform.style.display = "block";

  localStorage.setItem('LoggedIn', 'false')
}


function showallgames() {
  var url = 'ws.php?page=showallgames';

  fetch(url, {
    method: 'GET',
    credentials: 'include'
  })
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
         

        
        });
      }

    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });
}

function showallgames() {
  var url = 'ws.php?page=showallgames';
  var HTMLcode = '';
  var HTMLTemplate = showallgames2.innerHTML

  fetch(url, {
    method: 'GET',
    credentials: 'include'
  })
    .then(
      function (response) {
        if (response.status !== 200) {
          console.log('Looks like there was a problem. Status Code: ' +
            response.status);
          return;
        }
        response.json().then(function (data) {
          if (!data.error){
            for (var loop = 0; loop < data.length; loop++) {
              localStorage.setItem('allGames', JSON.stringify(data));
  
              HTMLcode += HTMLTemplate.replace(/{{thumbnailurl}}/g, data[loop].thumbnailurl)
                .replace(/{{gametitle}}/g, data[loop].gametitle)
                .replace(/{{main}}/g, data[loop].main)
                .replace(/{{com}}/g, data[loop].com)
                .replace(/{{speed}}/g, data[loop].speed)
                .replace(/{{gameid}}/g, data[loop].gameID)}
                maingames.innerHTML = HTMLcode;
          }else{
           document.getElementById('test1').innerHTML = '<div><p>You have been locked</p></div>';
          };
          
          
          
        });
      }
    )
    .catch(function (err) {
      console.log('Fetch Error :-S', err);
    });
}


// function haha() {
//   var url = 'ws.php?page=showallgames';
//
//   fetch(url, {
//     method: 'GET',
//     credentials: 'include'
//   })
//   .then(
//     function(response) {
//       if (response.status !== 200) {
//         console.log('Looks like there was a problem. Status Code: ' +
//           response.status);
//         // return;
//       }
//       response.json().then(function(data){
//         var outHTML = '';
//         var main = document.getElementById('main');
//         var ddog = data;
//
//         ddog.forEach(function(entry){
//           console.log(entry)
//
//           outHTML += '<div class= "col s12 m7"> <div class="card horizontal"> <div class="card-image"> <img src="'
//           + entry.thumbnailurl + '"> </div> <div class="card-stacked"> <div class="card-content"> <h5>' + entry.gametitle
//           + '</h5> <div class="roll lol">Normal</div> <div class="roll block">' +
//           entry.main +'</div> <div class="roll lol">Completionist</div> <div class="roll block">'
//           + entry.com + '</div> <div class="roll lol">Speedrun</div> <div class="roll block">' + entry.speed
//           + '</div> <div class="card-action"> <a>Game Details</a> </div> </div> </div> </div> </div>';
//
//           main.innerHTML = outHTML;
//
//
//         })
//
//       });
//     }
//   )
//   .catch(function(err) {
//     console.log('Fetch Error :-S', err);
//   });
//   }

// function log(){
//   var url2 = 'ws.php?page=log';
//
//   fetch(url2)
//   .then(
//     function(response) {
//       if (response.status !== 200) {
//         console.log('Looks like there was a problem. Status Code: ' +
//           response.status);
//         return;
//       }
//       response.json().then(function(data){
//         console.log(data);
//
//       });
//     }
//   )
//   .catch(function(err) {
//     console.log('Fetch Error :-S', err);
//   });
//   }
