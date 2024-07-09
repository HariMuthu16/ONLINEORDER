<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ONLINEORDER.User.Registration" %>

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

    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:Label ID="lblHeaderMsg" runat="server"
                    Text="<h2>User Registration</h2>"></asp:Label>
            </div>

            <div class="row">

                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is Requied"
                                    ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Enter Only Letters"
                                    ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s]+$"
                                    ControlToValidate="txtName">
                                </asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Full Name"
                                    ToolTip="FullName"></asp:TextBox>
                            </div>
                        </div>

                        <div>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="UserName is Requied"
                                    ControlToValidate="txtUserName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                </asp:RequiredFieldValidator>

                            </div>
                            <div>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter UserName"
                                    ToolTip="UserName"></asp:TextBox>
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
                                    ToolTip="PassWord" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div>
                            <div>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is Requied"
                                    ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                </asp:RequiredFieldValidator>

                            </div>
                            <div>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"
                                    ToolTip="Email" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">
                        <div>

                            <div>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="MobileNumber is Requied"
                                        ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Enter Only 10 Digits Numbers"
                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{10}$"
                                        ControlToValidate="txtMobile">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div>
                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter MobileNumber"
                                        ToolTip="MobileNumber"></asp:TextBox>
                                </div>
                            </div>




                            <div>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is Requied"
                                        ControlToValidate="txtAddress" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Your Address"
                                        ToolTip="Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="Post/Zip Code is Requied"
                                        ControlToValidate="txtPostCode" ForeColor="Red" Display="Dynamic" SetFocusOnError="true">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Enter Only 6 Digits Code"
                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^^[0-9]{6}$"
                                        ControlToValidate="txtPostCode">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div>
                                    <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" placeholder="Enter Post/Zip Code"
                                        ToolTip="Post/Zip Code"></asp:TextBox>
                                </div>
                            </div>

                            <div>
                                <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="Profile Image" onchange="ImagePreview(this);" />
                            </div>



                        </div>

                    </div>
                </div>


                <div class="row_pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" OnClick="btnRegister_Click"/>
                        <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100"
                            Text="Already registered? <a href='Login.aspx' class='badge badge-info'>Login here. .</a>">
                        </asp:Label>
                    </div>
                </div>
                <div class="row p-5">
                    <div style="align-items: center">
                        <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />
                    </div>

                </div>

            </div>
        </div>

    </section>



</asp:Content>
