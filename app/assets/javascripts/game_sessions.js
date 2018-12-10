$(function(){
    $("a.show_users").on("click", function(e){

        $.ajax({
            method: "GET",
            url: this.href
        }).success(function(response){
            $("div.user_list").html(response)

        })


        e.preventDefault()
    })
})
//$(function(){
//    $("#new_user").on("submit", function(e){
//
//        $.ajax({
//            type: ($("input[name='_method']").val() || this.method),
//            url: this.action,
//            data: $(this).serialize()
//        })
//        
//        e.preventDefault();
//    })
//});