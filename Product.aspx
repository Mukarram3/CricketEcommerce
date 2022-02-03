<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="CricketEcommerce.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--begin::Card-->
                <div class="card card-custom gutter-b example example-compact">

                    <!--begin::Form-->

                    <div class="card-body">
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txttitle" Text="Product Title"></asp:Label>
                                <asp:TextBox runat="server" ID="txttitle" AccessKey="u" class="form-control" placeholder="Enter Your Product Name" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Product Name' " />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txttitle" ErrorMessage="Please Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="String" ControlToValidate="txttitle" ErrorMessage="Please Enter Correct Product Name" ForeColor="Red"></asp:CompareValidator>
                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="ddlcategory"  Text="Product Category"></asp:Label>
                                <asp:DropDownList runat="server" ID="ddlcategory" CssClass="form-control">

                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" InitialValue="0" ControlToValidate="ddlcategory" ErrorMessage="Please Enter Product Category" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtdescription"  Text="Product Description"></asp:Label>

                                <textarea runat="server" cols="20" rows="2" AccessKey="e" ID="txtdescription" class="form-control" placeholder="Enter Your Product Description" name="email" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Product Description' "></textarea>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtdescription" ErrorMessage="Please Enter Product Description" ForeColor="Red"></asp:RequiredFieldValidator>
                               
                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtprice"  Text="Product Price"></asp:Label>
                                <asp:TextBox runat="server" AccessKey="d" ID="txtprice" class="form-control" placeholder="Please Enter Product Price" name="pass" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Please Enter Product Price'" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtprice" ErrorMessage="Please Enter Product Price" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" ControlToValidate="txtprice" Operator="DataTypeCheck" Type="Integer" ForeColor="Red" ErrorMessage="Please Enter Correct Product Price" ></asp:CompareValidator>

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtquantity"  Text="Product Quantity"></asp:Label>
                                <asp:TextBox runat="server" AccessKey="r" ID="txtquantity" class="form-control" name="repass" placeholder="EnterYyour Product Quantity" onfocus="this.placeholder = ''" onblur="this.placeholder = 'EnterYyour Product Price'" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtquantity" ErrorMessage="Please Enter Your Product PrQuantityice" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" ControlToValidate="txtquantity" Operator="DataTypeCheck" Type="Integer" ForeColor="Red" ErrorMessage="Please Enter Correct Product Quantity" ></asp:CompareValidator>
                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtstatus"  Text="Status"></asp:Label>

                                <asp:DropDownList runat="server" ID="txtstatus" class="form-control" placeholder="Enter Status" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Status' " name="status">
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" InitialValue="0" ControlToValidate="txtstatus" ErrorMessage="Please Enter Status" ForeColor="Red"></asp:RequiredFieldValidator>                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="file"  Text="Choose Image"></asp:Label>
                                <asp:FileUpload runat="server" ID="file" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="file" ErrorMessage="Please Choose Image" ForeColor="Red"></asp:RequiredFieldValidator>

                                <asp:Image ID="image" runat="server" Width="50px" />
                            </div>
                            
                        </div>

                        <div class="form-group row">

                            <div class="col-lg-6">
                                

                            </div>
                        </div>

                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-lg-6">
                                <asp:Button runat="server" ID="btninsert" class="btn btn-primary mr-2" OnClick="btninsert_Click" Text="Save" />
                                <button type="reset" class="btn btn-secondary">Cancel</button>

                            </div>

                        </div>
                    </div>

                    <!--end::Form-->
                </div>

                <!--end::Card-->

            </div>
        </div>
    </div>
</asp:Content>
