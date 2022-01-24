<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="CricketEcommerce.Category1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <div class="col-lg-5">
                                <asp:Label runat="server" AssociatedControlID="txtcatname" Text="Category Name"></asp:Label>
                                <asp:TextBox runat="server" ID="txtcatname" AccessKey="n" class="form-control" placeholder="Enter Category Name" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Category Name' " />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcatname" ErrorMessage="Please Enter Category" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="String" ControlToValidate="txtcatname" ErrorMessage="Please Enter Correct Category" ForeColor="Red"></asp:CompareValidator>
                            </div>
                           
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-7">
                                <asp:Label runat="server" AssociatedControlID="txtdescription"  Text="Category Description"></asp:Label>
                                
                                    <textarea runat="server" cols="20" rows="2" AccessKey="e" ID="txtdescription" class="form-control" placeholder="Enter Your Category Description" name="email" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Category Description' "></textarea>
                                
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtdescription" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                

                            </div>
                            
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-3">
                                <asp:Label runat="server" AssociatedControlID="txtstatus" Text="Category Status"></asp:Label>
                                <asp:DropDownList runat="server" ID="txtstatus" CssClass="form-control">
                                    <asp:ListItem Text="True" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="False" Value="0"></asp:ListItem>
                                </asp:DropDownList>                                
                                <asp:RequiredFieldValidator runat="server" InitialValue="0" ControlToValidate="txtstatus" ErrorMessage="Please Choose Status" ForeColor="Red"></asp:RequiredFieldValidator>
                                

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
