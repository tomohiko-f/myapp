$(function(){
    
    $('#comments').infiniteScroll({
    
    append: '.comments-list',  
    path: ".pagination a[rel=next]",
    checkLastPage: true,
    prefill: true,
    history: false,
    hideNav: '.pagination',
    }); 
});