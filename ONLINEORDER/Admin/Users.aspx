<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ONLINEORDER.Admin.Users" %>

<%@ Import Namespace="ONLINEORDER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var seconds = 4;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
          }, seconds * 1000);
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pcoded-inner-content pt-0">
        <diu class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </diu>
        <div class="main-body">
            <div class="page-wrapper">

                <div class="page-body">
                    <div class="row">

                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                </div>
                                <div class="card-block">
                                    <div class="row">

                                        <div class="col-12 mobile-inputs">
                                            <h3 class="sub-title">Category List</h3>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">

                                                    <asp:Repeater ID="rUsers" runat="server" OnItemCommand="rUsers_ItemCommand">
                                                        <headertemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-plus">Sr.NO</th>
                                                                        <th>Full Name</th>
                                                                        <th>UserName</th>
                                                                        <th>Email</th>
                                                                        <th>Joined Date</th>
                                                                        <th class="dataTable-nosort">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </headertemplate>
                                                        <itemtemplate>
                                                            <tr>
                                                                <td class="table-plus"><%# Eval("SrNo") %></td>
                                                                <td><%# Eval("Name") %></td>
                                                                <td><%# Eval("Username") %></td>
                                                                <td><%# Eval("Email") %></td>
                                                                <td><%# Eval("CreatedDate") %></td>

                                                                <td>
                                                                   <%-- <asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CssClass="badge badge-primary"
                                                                        CommandArgument='<%# Eval("CategoryId") %>' CommandName="edit">
                                                                        <i class="ti-pencil"></i>
                                                                    </asp:LinkButton>--%>

                                                                    <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" CssClass="badge badge-danger"
                                                                        CommandName="delete" CommandArgument='<%# Eval("UserId") %>'
                                                                        OnClientClick="return confirm('Are You Sure? You Want To Delete this User?');">
                                                                        <i class="ti-trash"></i>
                                                                    </asp:LinkButton>
                                                                </td>
                                                            </tr>

                                                        </itemtemplate>
                                                        <footertemplate>
                                                            </tbody>
                                                     </table>
                                                        </footertemplate>

                                                    </asp:Repeater>

                                                </div>
                                            </div>

                                        </div>



                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
