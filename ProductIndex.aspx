<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ProductIndex.aspx.cs" Inherits="CricketEcommerce.ProductIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-12" id="cartmsg">
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading text-center">
                --Featured Products--
						<div class='pull-right'>
                            Sort: &nbsp;&nbsp;&nbsp;<a href="#" id='price_sort'>Price</a> | <a href="#" id='pop_sort'>Popularity</a>
                        </div>
            </div>
            <div class="panel-body">
                <asp:Repeater runat="server" ID="rpt">
                    <HeaderTemplate><div id="get_product"></HeaderTemplate>
                  
                      <ItemTemplate>
                    <div class="col-md-3">
                        <div class="panel panel-info">
                            <div class="panel-heading"><%# Eval("Title") %></div>
                            <div class="panel-body">
                                <a href="#" class="imageproduct" pid="1">
                                    <img src="assets/images/<%# Eval("Image") %>" style="width: 200px; height: 250px;">
                                </a>
                            </div>
                            <div class="panel-heading">
                                <%# Eval("Price") %>
                                <asp:HyperLink ID="pdetail" style="float: right;" runat="server" CssClass="btn btn-primary btn-xs" NavigateUrl='<%# Eval("ID","~/ProductDetail.aspx?ID={0}") %>'>Quick Look</asp:HyperLink>
								&nbsp;
                                <asp:Button runat="server" CssClass="product btn btn-danger btn-xs" style="float: right;" ID="cart" Text="Add to Cart" />

                            </div>
                        </div>
                    </div>
                          </ItemTemplate>
                    <%--<div class="col-md-3">
                        <div class="panel panel-info">
                            <div class="panel-heading">iPhone 5s</div>
                            <div class="panel-body">
                                <a href="#" class="imageproduct" pid="2">
                                    <img src="assets/prod_images/iphonemobile.JPG" style="width: 200px; height: 250px;">
                                </a>
                            </div>
                            <div class="panel-heading">
                                Rs 25000
								<button pid="2" class="quicklook btn btn-danger btn-xs" style="float: right;">Quick look</button>&nbsp;
								<button pid="2" class="product btn btn-danger btn-xs" style="float: right;">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="panel panel-info">
                            <div class="panel-heading">iPad</div>
                            <div class="panel-body">
                                <a href="#" class="imageproduct" pid="3">
                                    <img src="assets/prod_images/iPad.jpg" style="width: 200px; height: 250px;">
                                </a>
                            </div>
                            <div class="panel-heading">
                                Rs 30000
								<button pid="3" class="quicklook btn btn-danger btn-xs" style="float: right;">Quick look</button>&nbsp;
								<button pid="3" class="product btn btn-danger btn-xs" style="float: right;">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="panel panel-info">
                            <div class="panel-heading">Samsung Tab</div>
                            <div class="panel-body">
                                <a href="#" class="imageproduct" pid="4">
                                    <img src="assets/prod_images/samsungtab.JPG" style="width: 200px; height: 250px;">
                                </a>
                            </div>
                            <div class="panel-heading">
                                Rs 10000
								<button pid="4" class="quicklook btn btn-danger btn-xs" style="float: right;">Quick look</button>&nbsp;
								<button pid="4" class="product btn btn-danger btn-xs" style="float: right;">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="panel panel-info">
                            <div class="panel-heading">Sony Vaio Laptop</div>
                            <div class="panel-body">
                                <a href="#" class="imageproduct" pid="5">
                                    <img src="assets/prod_images/vaio.JPG" style="width: 200px; height: 250px;">
                                </a>
                            </div>
                            <div class="panel-heading">
                                Rs 25000
								<button pid="5" class="quicklook btn btn-danger btn-xs" style="float: right;">Quick look</button>&nbsp;
								<button pid="5" class="product btn btn-danger btn-xs" style="float: right;">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="panel panel-info">
                            <div class="panel-heading">LG Aqua 2</div>
                            <div class="panel-body">
                                <a href="#" class="imageproduct" pid="6">
                                    <img src="assets/prod_images/lgaqua.JPG" style="width: 200px; height: 250px;">
                                </a>
                            </div>
                            <div class="panel-heading">
                                Rs 15000
								<button pid="6" class="quicklook btn btn-danger btn-xs" style="float: right;">Quick look</button>&nbsp;
								<button pid="6" class="product btn btn-danger btn-xs" style="float: right;">Add to Cart</button>
                            </div>
                        </div>
                    </div>--%>
                    <FooterTemplate></div></FooterTemplate>
                

                    </asp:Repeater>
                <!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body"><img src="assets/prod_images/samsung_galaxy.jpg"></div>
								<div class="panel-heading">$500.00
								<button class="btn btn-danger btn-xs" style="float:right;">Add to Cart</button>
								</div>
							</div>
						</div>-->
            </div>
            <div class="panel-footer">&copy; <script> var date = new
                                                                                       Date();
                                                                                   document.write(date.getFullYear());
                                </script></div>
        </div>
    </div>
</asp:Content>
