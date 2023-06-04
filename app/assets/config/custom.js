document.addEventListener('turbo:load', function() {
    const hamburger = document.querySelector('.hamburger');
    const mobileMenu = document.querySelector('.sideMenu');
    const main = document.querySelector('.main');
    
    hamburger.onclick = () => {
      hamburger.classList.toggle('open');
      main.classList.toggle('transform');
      mobileMenu.classList.toggle('width');
    };
});
