document.addEventListener('turbo:load', function() {
  //side menu
  const hamburger = document.querySelector('.hamburger');
  const mobileMenu = document.querySelector('.sideMenu');
  const main = document.querySelector('.main');
  
  if(hamburger) {
    hamburger.onclick = () => {
      hamburger.classList.toggle('open');
      main.classList.toggle('transform');
      mobileMenu.classList.toggle('width');
    };
  }

  //popup window
  const logout = document.querySelector('.fa-right-from-bracket');
  const popup = document.querySelector('.popup');
  const cancel = document.querySelector('.cancel');

  if (logout) {
    logout.onclick = () => {
      popup.classList.toggle('show');
    }
  }

  if (cancel) {
    cancel.onclick = () => {
      popup.classList.toggle('show');
    }
  }
});
