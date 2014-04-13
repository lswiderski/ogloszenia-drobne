<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProjektDotNet.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="post">
        <h2 class="title">
            <a href="#">Rejestracja</a>
        </h2>
    </div>
            <div id="start" runat="server">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="grupa1" />

                <table>
                    <tr>
                        <asp:Label ID="labelek" runat="server"></asp:Label>
                    </tr>
                    <tr>
                        <td class="labelek">Login (email)
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxLogin" CssClass="form-control formValidation" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="TextBoxLogin" ValidationGroup="grupa1"
                                ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                                ErrorMessage="Nie wpisałes poprawnego adresu e-mail!"
                                Display="dynamic">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="TextBoxLogin"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj login (email)" Display="dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelek">Hasło:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxHaslo" CssClass="form-control formValidation" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="HasloValidator" runat="server"
                                ControlToValidate="TextBoxHaslo" ValidationGroup="grupa1"
                                ErrorMessage="Podaj hasło" Display="dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="TextBoxHaslo"
                                ValidationGroup="grupa1"
                                ValidationExpression="(?=.{8,})[a-zA-Z]+[^a-zA-Z]+|[^a-zA-Z]+[a-zA-Z]+"
                                Display="Dynamic"
                                ErrorMessage="Hasło powinno być dłuższe niż 8 znaków oraz zawierać małe i duże litery a także cyfry ">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="labelek">Ponów hasło:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPonHaslo" CssClass="form-control formValidation" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="HasloPonValidator" runat="server"
                                ControlToValidate="TextBoxPonhaslo"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj hasło ponownie" Display="dynamic">*
                            </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="validHaslo" runat="server"
                                ControlToValidate="TextBoxHaslo" ValidationGroup="grupa1"
                                ControlToCompare="TextBoxPonHaslo"
                                Operator="Equal"
                                ErrorMessage="Pole hasło i ponów hasło muszą mieć takie same wartości" Display="dynamic">*
                            </asp:CompareValidator>

                        </td>
                    </tr>
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
                        <td></td>
                        <td>
                            <asp:Button ID="ButtonRejestracja" runat="server" Text="Rejestruj" CssClass="buttons btn btn-primary" OnClick="rejestracja" ValidationGroup="grupa1" />
                        </td>
                    </tr>
                </table>
            </div>
            
</asp:Content>
