<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductSetup.aspx.cs" Inherits="CricketEcommerce.ProductSetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product Page</title>
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
                    <asp:HyperLink runat="server" CssClass="btn btn-primary font-weight-bolder" NavigateUrl="~/Product.aspx">                        
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
                        </span>New Product</asp:HyperLink>

                    <!--end::Button-->
                </div>
            </div>
            <div class="card-body">
                <asp:Label ID="lbl" runat="server"></asp:Label>
                <!--begin: Datatable-->
                <div id="kt_datatable_wrapper" runat="server" class="dataTables_wrapper  dt-bootstrap4 no-footer">
                    <div class="row">
                        <div class="col-12">
                            <asp:GridView CssClass="table table-bordered table-hover table-primary table-striped" OnRowDeleting="GV_RowDeleting" OnRowEditing="GV_RowEditing" OnRowCommand="GV_RowCommand" runat="server" ID="GV" AutoGenerateColumns="false">

                                <Columns>

                                    <asp:BoundField DataField="ID" HeaderText="Product ID" />
                                    <asp:BoundField DataField="CategoryID" HeaderText="Category Name" />
                                    <asp:BoundField DataField="Title" HeaderText="Product Name" />
                                    <asp:BoundField DataField="Description" HeaderText="Product Description" />
                                    <asp:TemplateField HeaderText="Product Image">
                                        <ItemTemplate>
                                            <asp:Image runat="server" Width="50px" Height="50px" ImageUrl="https://localhost:44359/assets/images/<%# Bind('Image') %> " />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Price" HeaderText="Product Price" />
                                    <asp:BoundField DataField="Status" HeaderText="Product Status" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="edit" CommandName="Edit" CommandArgument="<%# Bind('ID') %>"><span class="svg-icon svg-icon-primary svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\Design\Edit.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>
        <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"/>
    </g>
</svg><!--end::Svg Icon--></span></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="delete" OnClientClick="return confirm('Are You To Delete??')" CommandName="Delete" CommandArgument="<%# Bind('ID') %>"><span class="svg-icon svg-icon-danger svg-icon-2x"><!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo1\dist/../src/media/svg/icons\General\Trash.svg--><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect x="0" y="0" width="24" height="24"/>
        <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"/>
        <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"/>
    </g>
</svg><!--end::Svg Icon--></span></asp:LinkButton>

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
