$(document).ready(()=>{
    $('.toggle').on('click',(e)=>{
      e.stopPropagation();
      e.preventDefault();
      $('#'+ e.target.getAttribute('aria-controls')).toggleClass('is-hidden');
    })
})