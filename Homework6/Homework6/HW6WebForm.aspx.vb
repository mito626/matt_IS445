Public Class HW6WebForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        NameTextBox.Focus()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CardDropDownList.SelectedIndexChanged

    End Sub

    Protected Sub Wizard1_FinishButtonClick(sender As Object, e As WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick

        FinalName.Text = NameTextBox.Text
        FinalCard.Text = CardDropDownList.Text
        FinalExpDate.Text = ExpirationCalendar.SelectedDate.ToString

    End Sub

    Protected Sub NameTextBox_TextChanged(sender As Object, e As EventArgs) Handles NameTextBox.TextChanged

    End Sub
End Class