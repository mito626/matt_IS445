<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HW7.Master" CodeBehind="form.aspx.vb" Inherits="Homework7.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h2>Welcome to My Web Form</h2>
        <h4>A demo form for hotel room reservation</h4>
            <div>
                <fieldset>
                    <legend>Customer Information</legend>
                    <div>
                        Full Name:&nbsp; <input id="fullname" name="Full Name" type="text" title="Please enter your name" placeholder="Firstname Lastname" required /><br />
                        <br />
                        Email Address:&nbsp; <input id="emailaddress" name="Email Address" type ="text" title="Please enter your email address" required /><br />
                        <br />
                        Phone Number:&nbsp; <input id="phonenumber" name="Phone Number" type="tel" pattern="[0-9]{10}" title="(###) ###-####" required />
            </div>
                </fieldset>
            <br />

            <fieldset>
                <legend>Room Information</legend>
                Arrival Date:&nbsp; <input id="arrivaldate" name="Arrival Date" type="date" value="mm/ dd/ yyyy" required /><br />
                <br />
                Arrival Time:&nbsp; <input id="arrivaltime" name="Arrival Time" type="time" value="--:-- --" required /><br />
                <br />
                Select a Room Type:&nbsp;
                <select name="room">
                    <option value="Luxury">Luxury</option>
                    <option value="Standard">Standard</option>
                    <option value="Economic">Economic</option>
                </select>
                <br />
                <br />
                Number of Nights (valid number is from 1 to 30):&nbsp; <input id="numberofnights" name="Number of Nights" type="number" min="1" max="30" value="1" />
                <br />
                <br />
                Number of Guests (the maximum number of guests is 3): <input id="numberofguests" name="Number of Guests" type="number" min="1" max="3" value="0" />
            </fieldset>
                <br />
               
                <fieldset>
                    <legend>Other Information</legend>
                    Promo Code:&nbsp; <input id="promocode" name="Promo Code" type="text" title="alpha numeric" pattern="[a-z][A-Z][0-9]{4}"/><br />
                    <br />
                    Special Note:&nbsp; <textarea id="specialnotes" name="Special Notes" cols="50" rows="10" placeholder="Enter your special notes here"></textarea>
                    <br />
                    <br />
                </fieldset>
                <p>
                            &nbsp;
        <button id="resetbutton" type="reset" value="Reset"><img src="clearButton.gif" width="75" height="25" alt="submit" border="0"> 
	</button>
        <button id="submitbutton" type="submit" value="Request Reservation"><img src="submitbutton.gif" width="75" height="25" alt="submit" border="0"> 
	</button>
                </p>
                </div>
        
</asp:Content>
