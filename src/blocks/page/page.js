if (Math.PI) {

  const PageClassModifier = function (e) {
    let jsPresent = document.querySelector('.no-js');
    if (jsPresent) {
      jsPresent.classList.toggle('no-js');
    }
  }
  document.addEventListener('DOMContentLoaded', PageClassModifier);
}
