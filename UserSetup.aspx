<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSetup.aspx.cs" Inherits="CricketEcommerce.UserSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>User Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>


        <%-- User Section Start --%>

        <div class="card card-custom gutter-b">
            <div class="card-header flex-wrap py-3">
                <div class="card-title">
                    <h3 class="card-label">User List
                    </h3>
                </div>
                <div class="card-toolbar">


                    <!--begin::Button-->
                        <asp:HyperLink  runat="server" CssClass="btn btn-primary font-weight-bolder" NavigateUrl="~/User.aspx">                        
                            <span class="svg-icon svg-icon-md">
                            <!--begin::Svg Icon | path:assets/media/svg/icons/Design/Flatten.svg-->
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24"></rect>
                                    <circle fill="#000000" cx="9" cy="15" r="6"></circle>
                                    <path d="M8.8012943,7.00241953 C9.83837775,5.20768121 11.7781543,4 14,4 C17.3137085,4 20,6.6862915 20,10 C20,12.2218457 18.7923188,14.1616223 16.9975805,15.1987057 C16.9991904,15.1326658 17,15.0664274 17,15 C17,10.581722 13.418278,7 9,7 C8.93357256,7 8.86733422,7.00080962 8.8012943,7.00241953 Z" fill="#000000" opacity="0.3"></path>
                                </g>
                            </svg>
                            <!--end::Svg Icon-->
                        </span>New User</asp:HyperLink>

                    <!--end::Button-->
                </div>
            </div>
            <div class="card-body">
                <asp:Label ID="lbl" runat="server"></asp:Label>
                <!--begin: Datatable-->
                <div id="kt_datatable_wrapper" class="dataTables_wrapper  dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <asp:GridView CssClass="table table-bordered table-hover table-primary table-striped" OnRowCommand="GV_RowCommand" runat="server" ID="GV" AutoGenerateColumns="false">

                                <Columns>

                                    <asp:BoundField DataField="ID" HeaderText="User ID" />
                                    <asp:BoundField DataField="UserName" HeaderText="User Name" />
                                    <asp:BoundField DataField="FatherName" HeaderText="FatherName" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:TemplateField HeaderText="User Image">
                                        <ItemTemplate>
                                            <asp:Image runat="server" Width="50px" Height="50px" ImageUrl="~/assets/images/<%# Bind('Image') %>" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                    <asp:BoundField DataField="Type" HeaderText="Type" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="edit" CommandName="Edit" CommandArgument="<%# Bind('ID') %>">Edit</asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="delete" OnClientClick="return confirm('Are You To Delete??')" CommandName="Delete" CommandArgument="<%# Bind('ID') %>">Delete</asp:LinkButton>

                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>

                </div>
                <!--end: Datatable-->
            </div>
        </div>

        <%-- User Section End --%>
    </div>
    <!--end::Body-->

</asp:Content>
