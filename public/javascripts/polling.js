$(document).ready(function(){
    var division = $('#status');
    var progress_bar =  $('.ProgressBar');
    function update_status(){
        division.load('/polling'); 
        $('.ProgressBarFill').animate({width : division.html()+'%' }, 'normal');
        if(division.html() == "100"){
            window.location = '/result'
        }
        setTimeout(update_status, 1000)
    }
    update_status();
    
});
