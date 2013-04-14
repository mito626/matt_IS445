function enterNumber() {

    var userNumber = prompt("Please enter a number between 2 and 10: ", "")

    /*Check if number is between 2 and 10*/
    if (userNumber >= 2 && userNumber <= 10) {

        /*outputs user's number*/
        document.writeln("<h2>Your input number is " + userNumber + " </h2>");
        document.write("<br/>");
        var millionth = userNumber;

        /*divide number until it is less than one millionth*/
        for (var counter = 0; millionth > .000001 ; counter++) {
            millionth = millionth / 2
        }

        /*output how many times till one millionth*/
        document.write("<h2>The number of times to divide the number " + userNumber
            + " by 2 to get a value less than one millionth is " + counter + " </h2>");
        document.write("<br/>");

        var stars = userNumber;
        document.write("<p>");
        var row = userNumber;

        /*display stars in triangle*/
        for (var stars = 0; stars < row; stars++) {

            for (var column = row - stars; column > 0; column--) {
                document.write("*");
            }

            document.write("<br/>");
        }

        document.write("</p>");
    }

    /*number is not within range */
    else {
        document.write("<span>");
        document.writeln("<h2>Your input is " + userNumber
            + ". The valid input number is between 2 and 10. Please reload this page and try again.</h2>");
        document.write("</span>");
    }
}