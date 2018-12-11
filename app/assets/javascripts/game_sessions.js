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
        $.ajax({
            type: this.method,
            url: this.action,
            data: $(this).serialize(),  
            success: function(response){
                $("question_content").val("");
                let $ul = $("div.question ul")
                $ul.append(response);
            }
        })
        

        e.preventDefault()
        
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
            success: function(response){
                $("question_content").val("");
                let $ul = $("div.question ul")
                $ul.append(response);
            }
        })
        alert("Hello!")

        e.preventDefault()
        
    })
});
