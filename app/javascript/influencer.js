//インフルエンサーの方
window.addEventListener('load', () => {
  const pullDownButtonI = document.getElementById('influencer')
  const pullDownInfluencer = document.getElementById('pulldown-influencer')
  const registrationI = document.getElementById('registration-i')
  const loginI = document.getElementById('login-i')

  pullDownButtonI.addEventListener('mouseover', () => {
    pullDownButtonI.setAttribute("style", "background-color:#e8c072;")
  });

  pullDownButtonI.addEventListener('mouseout', () => {
    pullDownButtonI.removeAttribute("style", "background-color:#e8c072;")
  });

  pullDownButtonI.addEventListener('click', () => {
    if (pullDownInfluencer.getAttribute("style") == "display:block;") {

      pullDownInfluencer.removeAttribute("style", "display:block;")
    } else {

      pullDownInfluencer.setAttribute("style", "display:block;")
    }
  });

  registrationI.addEventListener('mouseover', () => {
    registrationI.setAttribute("style", "background-color:#e8c072;")
  });
  
  registrationI.addEventListener('mouseout', () => {
    registrationI.removeAttribute("style", "background-color:#e8c072;")
  });

  loginI.addEventListener('mouseover', () => {
    loginI.setAttribute("style", "background-color:#e8c072;")
  });
  
  loginI.addEventListener('mouseout', () => {
    loginI.removeAttribute("style", "background-color:#e8c072;")
  });
});