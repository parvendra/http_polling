$(document).ready(function(){
    var division =  $('#status');
    function update_status(){
        division.load('/polling');     
        if(division.html() == "100"){
            window.location = '/result'
        }
        setTimeout(update_status, 1000)
    }
    update_status();
    
});
