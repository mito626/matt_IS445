function enterNumber() {

    var userNumber = prompt("Please enter a number between 5 and 20: ", "")

    /*Check if number is between 2 and 10*/
    if (userNumber >= 5 && userNumber <= 20) {
        var i,j;	// loop variables
        document.write("<table>");
        document.write("<tr>");
        for (var row = 1; row <= userNumber; row++) {
            document.write(row);        
        }
        document.write("</br>");
        document.write("</tr>");
        for (j=1; j<=userNumber; j++) {
            for (i = 1; i <= userNumber; i++) {

                document.write("\t", i * j);
                
            }
            document.write("</br>");	// end the line

        }
        document.write("</table>");
    }

        /*number is not within range */
    else {
        document.write("<span>");
        document.writeln("<h2>The valid input number is between 5 and 20, please refresh this page and try again.</h2>");
        document.write("</span>");
    }
}
