<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CricketEcommerce.User1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add User Page</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/login.css" />

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
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
                                <asp:Label runat="server" AssociatedControlID="txtusername" Text="Username"></asp:Label>
                                <asp:TextBox runat="server" ID="txtusername" AccessKey="u" class="form-control" placeholder="Enter Your Username" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Username' " />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="String" ControlToValidate="txtusername" ErrorMessage="Please Enter Correct Username" ForeColor="Red"></asp:CompareValidator>
                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtfathername"  Text="Father Name"></asp:Label>
                                <asp:TextBox runat="server" AccessKey="n" ID="txtfathername" class="form-control" placeholder="Enter Your Father Name" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Father Name' " />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtfathername" ErrorMessage="Please Enter Father Name" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtemail"  Text="Email Address"></asp:Label>

                                <asp:TextBox runat="server" AccessKey="e" ID="txtemail" class="form-control" placeholder="Enter Your Email Address" name="email" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Email Address' " />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Formate" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:Label runat="server" ID="emailexist" ForeColor="Red"></asp:Label>

                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtpass"  Text="Password"></asp:Label>
                                <asp:TextBox runat="server" AccessKey="d" ID="txtpass" class="form-control" placeholder="Create your password" name="pass" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>


                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtrepass"  Text="Repeat Password"></asp:Label>
                                <asp:TextBox runat="server" AccessKey="r" ID="txtrepass" class="form-control" name="repass" placeholder="Repeat your password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtrepass" ErrorMessage="Please Repeate Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator runat="server" ControlToValidate="txtrepass" ControlToCompare="txtpass" ErrorMessage="Password does not Matched" ForeColor="Red"></asp:CompareValidator>


                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtphone" for="phone"  Text="Phone"></asp:Label>

                                <asp:TextBox runat="server" AccessKey="m" ID="txtphone" class="form-control" placeholder="Enter your WhatsApp Number" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your WhatsApp Number' " name="phone" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtphone" ErrorMessage="Please Enter WhatsApp Number" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<asp:CompareValidator ControlToValidate="txtphone" runat="server" ErrorMessage="Please Enter Correct WhatsApp Number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>--%>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="file"  Text="Choose Image"></asp:Label>
                                <asp:FileUpload runat="server" ID="file" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="file" ErrorMessage="Please Choose Image" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="type"  Text="Type"></asp:Label>
                                <asp:DropDownList runat="server" CssClass="form-control" ID="type">
                                    <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                                    <asp:ListItem Text="User" Value="user"></asp:ListItem>
                                </asp:DropDownList>
                               <asp:RequiredFieldValidator runat="server" ControlToValidate="type" ErrorMessage="Please Select Type Of User" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            </div>
                        </div>

                        <div class="form-group row">

                            <div class="col-lg-6">
                                <asp:Label runat="server" AssociatedControlID="txtstatus"  Text="Status"></asp:Label>

                                <asp:DropDownList runat="server" ID="txtstatus" class="form-control" placeholder="Enter Status" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Status' " name="status">
                                    <asp:ListItem Text="True" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="False" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtstatus" ErrorMessage="Please Enter Status" ForeColor="Red"></asp:RequiredFieldValidator>

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
