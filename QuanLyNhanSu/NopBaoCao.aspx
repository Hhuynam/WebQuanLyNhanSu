<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="NopBaoCao.aspx.cs" Inherits="QuanLyNhanSu.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2_NopBaoCao" runat="server" BackColor="#FFFFCC" Height="200px">
        <asp:Panel ID="Panel2" runat="server" Width="256px">
            <table class="auto-style1">
                <tr>
                    <td style="width: 413px">
                        <asp:Label ID="Label3_NopBaoCao" runat="server" Text="Nộp báo cáo ngay"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 413px; height: 26px">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 30px; width: 413px">
                        <asp:Button ID="Button2_GuiBaoCao" runat="server" OnClick="Button2_GuiBaoCao_Click" Text="Gửi báo cáo" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 30px; width: 413px">
                        <asp:Label ID="lblmessage" runat="server" Text="Thông báo" Visible="False"></asp:Label>
                    </td>
                </tr>
                <!-- UpdatePanel for Progress bar -->
                <tr>
                    <td style="height: 30px; width: 413px">
                        <asp:UpdatePanel ID="UpdatePanel" runat="server">
                            <ContentTemplate>
                                <!-- Progress bar or loading spinner -->
                                <asp:UpdateProgress ID="UpdateProgress" runat="server" DisplayAfter="0" AssociatedUpdatePanelID="UpdatePanel">
                                    <ProgressTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="https://media.tenor.com/On7kvXhzml4AAAAj/loading-gif.gif" Width="50px" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
