Imports System.Data.SqlClient

Public Class Equipment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CrossButton_Click(sender As Object, e As EventArgs)

        Dim dt As DataTable
        If ViewState("Data") IsNot Nothing Then
            dt = DirectCast(ViewState("Data"), DataTable)
        Else
            ' Create a new DataTable and define its columns
            dt = New DataTable()
            dt.Columns.Add("Text1", GetType(String))
            dt.Columns.Add("Text2", GetType(String))
            dt.Columns.Add("Text3", GetType(String))
            dt.Columns.Add("Text4", GetType(String))
            dt.Columns.Add("Text5", GetType(String))
        End If

        ' Add a new row to the DataTable
        Dim row As DataRow = dt.NewRow()
        row("Text1") = InNumber.Text
        row("Text2") = txtdescrption.Text
        row("Text3") = txtMfg.Text
        row("Text4") = txtSeralNumber.Text
        row("Text5") = txtCode.Text
        dt.Rows.Add(row)

        ' Store the updated DataTable in ViewState
        ViewState("Data") = dt

        ' Bind the DataTable to the GridView
        GridView1.DataSource = dt
        GridView1.DataBind()
        Insert(InNumber.Text, txtdescrption.Text, txtMfg.Text, txtSeralNumber.Text, txtCode.Text)
    End Sub

    Public Sub Insert(inv As String, desc As String, mfg As String, serial As String, loc As String)
        Dim constr As String = ""
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("INSERT INTO PropertyEquipmentSalvaged1 (inv_number, description, mfg, serial_number, loc_code) VALUES (@inv, @desc, @mfg, @serial, @loc)")
                cmd.Parameters.AddWithValue("@inv", inv)
                cmd.Parameters.AddWithValue("@desc", desc)
                cmd.Parameters.AddWithValue("@mfg", mfg)
                cmd.Parameters.AddWithValue("@serial", serial)
                cmd.Parameters.AddWithValue("@loc", loc)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
    End Sub
End Class