//企業の方
window.addEventListener('load', () => {
  const pullDownButtonC = document.getElementById('company')
  const pullDownCompany = document.getElementById('pulldown-company')
  const registrationC = document.getElementById('registration-c')
  const loginC = document.getElementById('login-c')
  
  pullDownButtonC.addEventListener('mouseover', () => {
    pullDownButtonC.setAttribute("style", "background-color:#616060;")
  });
  
  pullDownButtonC.addEventListener('mouseout', () => {
    pullDownButtonC.removeAttribute("style", "background-color:#616060;")
  });
  
  pullDownButtonC.addEventListener('click', () => {
    if (pullDownCompany.getAttribute("style") == "display:block;") {
        
      pullDownCompany.removeAttribute("style", "display:block;")
    } else {

      pullDownCompany.setAttribute("style", "display:block;")
    }   
  });

  registrationC.addEventListener('mouseover', () => {
    registrationC.setAttribute("style", "background-color:#616060;")
  });
  
  registrationC.addEventListener('mouseout', () => {
    registrationC.removeAttribute("style", "background-color:#616060;")
  });

  loginC.addEventListener('mouseover', () => {
    loginC.setAttribute("style", "background-color:#616060;")
  });
  
  loginC.addEventListener('mouseout', () => {
    loginC.removeAttribute("style", "background-color:#616060;")
  });
});
