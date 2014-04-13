<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="ProjektDotNet.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="post">
        <h2 class="title"><a href="#">Edytuj profil </a></h2>
    </div>
            <div id="edycjadiv" runat="server">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="grupa1" />
            <table style="border-collapse: collapse;">
                <tr>
                    <td class="labelek">Imie:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxImie" CssClass="form-control formValidation" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="imieValid" runat="server"
                                ControlToValidate="TextBoxImie"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj imię" Display="dynamic">*
                         </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="labelek">Nazwisko:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxNazwisko" CssClass="form-control formValidation" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nazwiskoValidator" runat="server"
                                ControlToValidate="TextBoxNazwisko"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj nazwisko" Display="dynamic">*
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="labelek">Miejscowość:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxMiejsce" CssClass="form-control formValidation" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validMiejsce" runat="server"
                                ControlToValidate="TextBoxMiejsce"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj miejscowość" Display="dynamic">*
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="labelek" id="pothaslo">Potwierdź zmiany hasłem:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxHaslo" CssClass="form-control formValidation" type="password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHaslo" runat="server"
                                ControlToValidate="TextBoxHaslo"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj hasło" Display="dynamic">*
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="labelek"></td>
                    <td style="text-align: right;">
                        <asp:Button ID="Button1" runat="server" CssClass="buttons btn btn-primary" Text="Zapisz" Font-Bold="true"  ValidationGroup="grupa1" />
                        <asp:Button ID="Button2" runat="server" CssClass="buttons btn btn-danger" Text="Anuluj" Font-Bold="true"  />
                    </td>
                </tr>
            </table>
            </div>

            <div id="ZmianaHasla" runat="server">
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="grupa2" />
            <table style="border-collapse: collapse;">
                <tr>
                        <td class="labelek">Stare hasło:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxStareHaslo" CssClass="form-control formValidation" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="HasloValidator" runat="server"
                                ControlToValidate="TextBoxStareHaslo" ValidationGroup="grupa2"
                                ErrorMessage="Podaj stare hasło" Display="dynamic">*</asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                        <td class="labelek">Podaj nowe hasło:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxNoweHaslo" CssClass="form-control formValidation" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="TextBoxNoweHaslo" ValidationGroup="grupa2"
                                ErrorMessage="Podaj nowe hasło" Display="dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="TextBoxNoweHaslo"
                                ValidationGroup="grupa2"
                                ValidationExpression="(?=.{8,})[a-zA-Z]+[^a-zA-Z]+|[^a-zA-Z]+[a-zA-Z]+"
                                Display="Dynamic"
                                ErrorMessage="Nowe hasło powinno być dłuższe niż 8 znaków oraz zawierać małe i duże litery a także cyfry ">*</asp:RegularExpressionValidator>
                        
                        </td>
                </tr>
                <tr>
                        <td class="labelek">Wpisz ponownie nowe hasło:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPonHaslo" CssClass="form-control formValidation" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="HasloPonValidator" runat="server"
                                ControlToValidate="TextBoxPonHaslo"
                                ValidationGroup="grupa2"
                                ErrorMessage="Podaj hasło ponownie" Display="dynamic">*
                            </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="validHaslo" runat="server"
                                ControlToValidate="TextBoxPonHaslo" ValidationGroup="grupa2"
                                ControlToCompare="TextBoxNoweHaslo"
                                Operator="Equal"
                                ErrorMessage="Pole nowe hasło i podaj hasło muszą mieć takie same wartości" Display="dynamic">*
                            </asp:CompareValidator>

                        </td>
                    </tr>
                <tr>
                    <td class="labelek"></td>
                    <td style="text-align: right;">
                        <asp:Button ID="Button3" runat="server" CssClass="buttons btn btn-primary" Text="Zapisz" Font-Bold="true"  ValidationGroup="grupa2" />
                        <asp:Button ID="Button4" runat="server" CssClass="buttons btn btn-danger" Text="Anuluj" Font-Bold="true"  />
                    </td>
                </tr>
            </table>
            </div>


</asp:Content>
