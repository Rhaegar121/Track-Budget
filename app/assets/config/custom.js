document.addEventListener('turbo:load', function() {
    //side menu
    const hamburger = document.querySelector('.hamburger');
    const mobileMenu = document.querySelector('.sideMenu');
    const main = document.querySelector('.main');
    
    hamburger.onclick = () => {
      hamburger.classList.toggle('open');
      main.classList.toggle('transform');
      mobileMenu.classList.toggle('width');
    };

    //popup window
    const logout = document.querySelector('.fa-right-from-bracket');
    const popup = document.querySelector('.popup');
});
