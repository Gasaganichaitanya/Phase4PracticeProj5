<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="PracticeProj5Phase4.Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td><h1>Display</h1></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvfeedback" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" ReadOnly="True" SortExpression="EmployeeId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Dbrainbowschool891ConnectionString %>" DeleteCommand="DELETE FROM [FeedbackForm] WHERE [EmployeeId] = @original_EmployeeId AND [Name] = @original_Name AND [Email] = @original_Email AND [Rating] = @original_Rating" InsertCommand="INSERT INTO [FeedbackForm] ([EmployeeId], [Name], [Email], [Rating]) VALUES (@EmployeeId, @Name, @Email, @Rating)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:Dbrainbowschool891ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [FeedbackForm]" UpdateCommand="UPDATE [FeedbackForm] SET [Name] = @Name, [Email] = @Email, [Rating] = @Rating WHERE [EmployeeId] = @original_EmployeeId AND [Name] = @original_Name AND [Email] = @original_Email AND [Rating] = @original_Rating">
                    <DeleteParameters>
                        <asp:Parameter Name="original_EmployeeId" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Rating" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EmployeeId" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Rating" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Rating" Type="Int32" />
                        <asp:Parameter Name="original_EmployeeId" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Rating" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
