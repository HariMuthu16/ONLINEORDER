<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ONLINEORDER.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var seconds = 9;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2>Login</h2>
            </div>

            <div class="row">
                  <div class="col-md-6">
                       <div class="form_container">
                           <img id="useerLogin" src="../Images/Login.jpg" Class="img-thumbnail" />
                           
                       </div>
                      </div>

                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            <div>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="UserName is Requied"
                                        ControlToValidate="txtUserName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter UserName"
                                        ></asp:TextBox>
                                </div>
                            </div>


                            <div>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvPassWord" runat="server" ErrorMessage="PassWord is Requied"
                                        ControlToValidate="txtPassWord" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div>
                                    <asp:TextBox ID="txtPassWord" runat="server" CssClass="form-control" placeholder="Enter PassWord"
                                        TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="btn_box">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" OnClick="btnLogin_Click"/>
                            <span class="pl-3 text-info">New User?<a href="Registration.aspx" class="badge badge-info ml-3">Click Here ToRegister</a> </span>
                            </div>

                        </div>
                    </div>

                </div>

            </div>

        </div>

    </section>

</asp:Content>
