<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="DiemDanh.aspx.cs" Inherits="QuanLyNhanSu.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" BackColor="#FF9933">
        <h2>Điểm danh</h2>
        <asp:Button ID="btnDiemDanh" runat="server" Text="Điểm danh" OnClick="btnDiemDanh_Click" />
        <br />
        <asp:Label ID="lblDiemDanhResult" runat="server" Text="" Font-Bold="True" ForeColor="Green"></asp:Label>
    </asp:Panel>
</asp:Content>
