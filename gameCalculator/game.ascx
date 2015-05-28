<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="game.ascx.cs" Inherits="gameCalculator.game" %>

<div class="form-group">
    <label for="rblResult" class="col-sm-4 control-label">Result:</label>
    <div class="col-sm-8">
        <asp:RadioButtonList ID="rblResult" runat="server">
            <asp:ListItem value="1" Text="Win" Selected="True"></asp:ListItem>
            <asp:ListItem value="0" Text="Loss"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-4 control-label">Scored:</label>
    <div class="col-sm-8">
        <asp:TextBox ID="txtScored" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="alert_wrapper">
        <asp:RangeValidator ID="RangeValidator1" 
                            SetFocusOnError="true" 
                            ControlToValidate="txtScored" 
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
                                    ControlToValidate="txtScored" 
                                    Display="Dynamic"
                                    cssClass="alert alert-danger"
                                    ErrorMessage="You must enter the number of goals scored!"
                                    runat="server">
        </asp:RequiredFieldValidator>
    </div>
    <div class="clear"></div>
</div>
<div class="form-group">
    <label class="col-sm-4 control-label">Allowed:</label>
    <div class="col-sm-8">
        <asp:TextBox ID="txtAllowed" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="alert_wrapper">
        <asp:RangeValidator ID="RangeValidator2" 
                        SetFocusOnError="true" 
                        ControlToValidate="txtAllowed"
                        MinimumValue="0" 
                        MaximumValue="99999" 
                        Type="Integer"
                        Display="Dynamic"
                        cssClass="alert alert-danger"
                        ErrorMessage="Goals allowed must be a positive number!"
                        runat="server">
        </asp:RangeValidator>
    </div>
    <div class="clear"></div>
</div>
<div class="form-group">
    <label class="col-sm-4 control-label">Spectators:</label>
    <div class="col-sm-8">
        <asp:TextBox ID="txtSpectators" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="alert_wrapper">
        <asp:RangeValidator ID="RangeValidator3" 
                            SetFocusOnError="true" 
                            ControlToValidate="txtSpectators"
                            MinimumValue="0" 
                            MaximumValue="99999" 
                            Type="Integer"
                            Display="Dynamic"
                            cssClass="alert alert-danger"
                            ErrorMessage="Number of spectators must be a positive number!"
                            runat="server">
        </asp:RangeValidator>
    </div>
    <div class="clear"></div>
</div>