$(function(){
    $("a.show_users").on("click", function(e){

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
$(function(){
    $("#new_round").on("submit", function(e){
        let $form = $(this);
        let action = $form.attr("action");
        let params = $form.serialize()

        e.preventDefault()

        $.ajax({
            url: action,
            data: params,
            dataType: "json",
            method: "POST"
        }).success(function(json){
        //$.post(action, params, "json").success(function(json){
        
            console.log(json)
        })
        
        
    })
});

$(function(){

})


$(function(){
    $("#new_user").on("submit", function(e){
        $.ajax({
            type: this.method,
            url: this.action,
            data: $(this).serialize(),
            success: function(json){
                $("question_content").val("");
                let $ul = $("div.question ul")
                $ul.append(response);
            }
        })
        alert("Hello!")

        e.preventDefault()
        
    })
});
