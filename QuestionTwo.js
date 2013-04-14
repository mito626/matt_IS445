$(function () {
    $("#run").click(function (event) {
        var inputText = $("#inputText").val();
        $("#output").text(inputText);
        $("#message").show;
        var usernameLength = $("#username").length();
        var passwordLength = $("#password").length();
        var conformationLength = $("#conformation").length();
        if ((usernameLength < 4 && usernameLength > 8) || (passwordLength < 4 && passwordLength > 8) || (conformationLength < 4 && conformationLength > 8))
        {
            $("#message").text("The length of the user name and password must be between 4 and 8").css("color","red");
        }
        var passwordTest = $("#password").val();
        var conformationTest = $("conformation").val();
        if (passwordTest != conformationTest) {
            $("message").text("The passwords are different").css("color","red");
        }
        else {
            $("message").text("The input values are correct").css("color","green");
        }

    }
        


});
