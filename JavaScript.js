function enterNumber() {

    var userNumber = prompt("Please enter a number between 2 and 10: ", " ")

    if (userNumber >=2 && userNumber <=10) {

        document.writeln("<h2>Your input number is " + userNumber + " </h2>")
        var millionth = userNumber;
        for (var counter = 0; millionth > .000001 ; counter++) {
            millionth /= 2;
        }

        document.writeln("<h2>The number of times to divide the number " + userNumber + " by 2 to get a value less than one millionth is " + count + "</h2>")

        var stars = userNumber;
        document.write("<p>");
        var row = userNumber;
        for (var stars = 0; stars < row; stars++) {

            for (var column = row - stars; column > 0; column--) {
                document.write("*");
            }

            document.write("<br/>");
        }

        document.writeln("</p>");
    }
    else {

        document.writeln("<h2>Your input is " + userNumber + ". The valid input number is between 2 and 10. Please reload this page and try again.")
    }
}