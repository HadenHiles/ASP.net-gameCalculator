<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gameCalculator._Default" %>
<%@ Register Src="~/game.ascx" TagPrefix="uc" TagName="game" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Game Calculator</h1>
    <p>All fields are required. No ties or draws are allowed.</p>

    <div class="container-fluent">
        <div class="row">
            <div class="col-sm-4 col-md-4">
                <div class="well">
                    <h2>Game 1</h2>
                    <div class="form-group">
                        <label for="rblResult1" class="col-sm-4 control-label">Result:</label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="rblResult1" runat="server">
                                <asp:ListItem value="1" Text="Win" Selected="True"></asp:ListItem>
                                <asp:ListItem value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtScored1" class="col-sm-4 control-label">Scored:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator1" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtScored1" 
                                                MinimumValue="0" 
                                                MaximumValue="99999"
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger" 
                                                ErrorMessage="Goals scored must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtScored1" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals scored!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtAllowed1" class="col-sm-4 control-label">Allowed:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator2" 
                                            SetFocusOnError="true" 
                                            ControlToValidate="txtAllowed1"
                                            MinimumValue="0" 
                                            MaximumValue="99999" 
                                            Type="Integer"
                                            Display="Dynamic"
                                            cssClass="alert alert-danger"
                                            ErrorMessage="Goals allowed must be a positive number!"
                                            runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtAllowed1" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals allowed!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtSpectators1" class="col-sm-4 control-label">Spectators:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator3" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtSpectators1"
                                                MinimumValue="0" 
                                                MaximumValue="99999" 
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger"
                                                ErrorMessage="Spectators must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtSpectators1" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the Spectators!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <asp:CompareValidator ID="CompareValidator1"
                                        SetFocusOnError="true" 
                                        ControlToValidate="txtScored1"
                                        ControlToCompare="txtAllowed1"
                                        Operator="NotEqual"
                                        CssClass="alert alert-danger"
                                        ErrorMessage="You cannot have a tie game!"
                                        runat="server">
                    </asp:CompareValidator>
                </div>
            </div>
            <div class="col-sm-4 col-md-4">
                <div class="well">
                    <h2>Game 2</h2>
                    <div class="form-group">
                        <label for="rblResult2" class="col-sm-4 control-label">Result:</label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="rblResult2" runat="server">
                                <asp:ListItem value="1" Text="Win" Selected="True"></asp:ListItem>
                                <asp:ListItem value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtScored2" class="col-sm-4 control-label">Scored:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator4" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtScored2" 
                                                MinimumValue="0" 
                                                MaximumValue="99999"
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger" 
                                                ErrorMessage="Goals scored must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtScored2" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals scored!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtAllowed2" class="col-sm-4 control-label">Allowed:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator5" 
                                            SetFocusOnError="true" 
                                            ControlToValidate="txtAllowed2"
                                            MinimumValue="0" 
                                            MaximumValue="99999" 
                                            Type="Integer"
                                            Display="Dynamic"
                                            cssClass="alert alert-danger"
                                            ErrorMessage="Goals allowed must be a positive number!"
                                            runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtAllowed2" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals allowed!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtSpectators2" class="col-sm-4 control-label">Spectators:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator6" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtSpectators2"
                                                MinimumValue="0" 
                                                MaximumValue="99999" 
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger"
                                                ErrorMessage="Spectators must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtSpectators2" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the Spectators!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <asp:CompareValidator ID="CompareValidator2"
                                        SetFocusOnError="true" 
                                        ControlToValidate="txtScored2"
                                        ControlToCompare="txtAllowed2"
                                        Operator="NotEqual"
                                        CssClass="alert alert-danger"
                                        ErrorMessage="You cannot have a tie game!"
                                        runat="server">
                    </asp:CompareValidator>
                </div>
            </div>
            <div class="col-sm-4 col-md-4">
                <div class="well">
                    <h2>Game 3</h2>
                    <div class="form-group">
                        <label for="rblResult3" class="col-sm-4 control-label">Result:</label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="rblResult3" runat="server">
                                <asp:ListItem value="1" Text="Win" Selected="True"></asp:ListItem>
                                <asp:ListItem value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtScored3" class="col-sm-4 control-label">Scored:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator7" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtScored3" 
                                                MinimumValue="0" 
                                                MaximumValue="99999"
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger" 
                                                ErrorMessage="Goals scored must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtScored3" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals scored!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtAllowed3" class="col-sm-4 control-label">Allowed:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator8" 
                                            SetFocusOnError="true" 
                                            ControlToValidate="txtAllowed3"
                                            MinimumValue="0" 
                                            MaximumValue="99999" 
                                            Type="Integer"
                                            Display="Dynamic"
                                            cssClass="alert alert-danger"
                                            ErrorMessage="Goals allowed must be a positive number!"
                                            runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtAllowed3" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals allowed!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtSpectators3" class="col-sm-4 control-label">Spectators:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator9" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtSpectators3"
                                                MinimumValue="0" 
                                                MaximumValue="99999" 
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger"
                                                ErrorMessage="Spectators must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtSpectators3" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the Spectators!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <asp:CompareValidator ID="CompareValidator3"
                                        SetFocusOnError="true" 
                                        ControlToValidate="txtScored3"
                                        ControlToCompare="txtAllowed3"
                                        Operator="NotEqual"
                                        CssClass="alert alert-danger"
                                        ErrorMessage="You cannot have a tie game!"
                                        runat="server">
                    </asp:CompareValidator>
                </div>
            </div>
            <div class="col-sm-4 col-md-4">
                <div class="well">
                    <h2>Game 4</h2>
                    <div class="form-group">
                        <label for="rblResult4" class="col-sm-4 control-label">Result:</label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="rblResult4" runat="server">
                                <asp:ListItem value="1" Text="Win" Selected="True"></asp:ListItem>
                                <asp:ListItem value="0" Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtScored4" class="col-sm-4 control-label">Scored:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator10" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtScored4" 
                                                MinimumValue="0" 
                                                MaximumValue="99999"
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger" 
                                                ErrorMessage="Goals scored must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtScored4" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals scored!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtAllowed4" class="col-sm-4 control-label">Allowed:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator11" 
                                            SetFocusOnError="true" 
                                            ControlToValidate="txtAllowed4"
                                            MinimumValue="0" 
                                            MaximumValue="99999" 
                                            Type="Integer"
                                            Display="Dynamic"
                                            cssClass="alert alert-danger"
                                            ErrorMessage="Goals allowed must be a positive number!"
                                            runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtAllowed4" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the number of goals allowed!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="form-group">
                        <label for="txtSpectators4" class="col-sm-4 control-label">Spectators:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtSpectators4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="alert_wrapper">
                            <asp:RangeValidator ID="RangeValidator12" 
                                                SetFocusOnError="true" 
                                                ControlToValidate="txtSpectators4"
                                                MinimumValue="0" 
                                                MaximumValue="99999" 
                                                Type="Integer"
                                                Display="Dynamic"
                                                cssClass="alert alert-danger"
                                                ErrorMessage="Spectators must be a positive number!"
                                                runat="server">
                            </asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                                                        SetFocusOnError="true" 
                                                        ControlToValidate="txtSpectators4" 
                                                        Display="Dynamic"
                                                        cssClass="alert alert-danger"
                                                        ErrorMessage="Enter the Spectators!"
                                                        runat="server">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <asp:CompareValidator ID="CompareValidator4" 
                                        SetFocusOnError="true"
                                        ControlToValidate="txtScored4"
                                        ControlToCompare="txtAllowed4"
                                        Operator="NotEqual"
                                        CssClass="alert alert-danger"
                                        ErrorMessage="You cannot have a tie game!"
                                        runat="server">
                    </asp:CompareValidator>
                </div>
            </div>
            <div class="col-md-8 col-sm-8">
                <div class="well">
                        <h1>Summary</h1>
                        <div class="results_list">
                            <div>
                                Games One: <asp:Label ID="lblGamesWon" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Games Lost: <asp:Label ID="lblGamesLost" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Winning %: <asp:Label ID="lblWinningPercentage" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Total Points Scored: <asp:Label ID="lblTotalPointsScored" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Total Points Allowed: <asp:Label ID="lblTotalPointsAllowed" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Point Differential: <asp:Label ID="lblPointDifferential" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Total Spectators: <asp:Label ID="lblTotalSpectators" CssClass="bold" runat="server"></asp:Label>
                            </div>
                            <div>
                                Average Spectators: <asp:Label ID="lblAverageSpectators" CssClass="bold" runat="server"></asp:Label>
                            </div>
                        </div>
                        <asp:Button ID="btnCalculate" CssClass="btn btn-primary" runat="server" Text="Calculate Summary" OnClick="btnCalculate_Click" />
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
