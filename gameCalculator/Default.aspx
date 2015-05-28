<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gameCalculator._Default" %>
<%@ Register Src="~/game.ascx" TagPrefix="uc" TagName="game" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Game Calculator</h1>
    <p>All fields are required. No ties or draws are allowed.</p>

    <div class="container-fluent">
        <div class="row">
            <div class="col-sm-6 col-md-6">
                <h2>Game 1</h2>
                <uc:game ID="game1" runat="server"></uc:game>
            </div>
            <div class="col-sm-6 col-md-6">
                <h2>Game 2</h2>
                <uc:game ID="game2" runat="server"></uc:game>
            </div>
            <div class="col-sm-6 col-md-6">
                <h2>Game 3</h2>
                <uc:game ID="game3" runat="server"></uc:game>
            </div>
            <div class="col-sm-6 col-md-6">
                <h2>Game 4</h2>
                <uc:game ID="game4" runat="server"></uc:game>
            </div>
            <asp:Button ID="btnCalculate" CssClass="btn btn-primary center" runat="server" Text="Summary" />
        </div>
    </div>
</asp:Content>
