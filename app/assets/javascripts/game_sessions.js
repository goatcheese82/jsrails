$(function(){
    $("a.show_users").on("click", function(e){

        //$.get(this.href).success(function(json){
        //    debugger
        //    $("div.show_users").html(response)
        //})

        $.get(this.href).success(function(json){
            let $ul = $("div.user_list")
            $ul.html("")

            json.forEach(function(user){
                $ul.append("<li>" + user.first_name + "</li>")
            })
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