(function () {
  const submitBtn = document.querySelector('.form__submit');
  const agreementCheckbox = document.querySelector('.form__agreement');
  const agreementHandler = function (e) {
    if (!this.checked) {
      submitBtn.disabled = true;
    } else {
      submitBtn.disabled = false;
    }
  };

  if (agreementCheckbox) {
    agreementCheckbox.addEventListener('change', agreementHandler);
  }
})();
