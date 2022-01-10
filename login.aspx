<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CricketEcommerce.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login/Sign Up</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/login.css" />

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>


    <script>


        $(document).ready(function () {

            $(".sign-in").hide();
            $(".sign-up").hide();
            $(".sign-up-form").hide();
            $(".login-box").css({ "min-height": "625px" });
            $(".signin").css({ "border-bottom": "2px solid #f7631b", "color": "white" });

            $(".signup").click(function () {

                $(".signup").css({ "border-bottom": "2px solid #f7631b", "color": "white" });
                $(".signin").css({ "border-bottom": "none", "color": "#777" });

                $(".login-up-form").hide();
                $(".login-box").css({ "min-height": "1040px" });
                $(".sign-up-form").show();

            });

            $(".signin").click(function () {

                $(".signin").css({ "border-bottom": "2px solid #f7631b", "color": "white" });
                $(".signup").css({ "border-bottom": "none", "color": "#777" });
                $(".sign-up-form").hide();
                $(".login-box").css({ "min-height": "625px" });
                $(".login-up-form").show();

            });
            $(".not_account").click(function () {

                $(".signup").css({ "border-bottom": "2px solid #f7631b", "color": "white" });
                $(".signin").css({ "border-bottom": "none", "color": "#777" });
                $(".login-box").css({ "min-height": "1040px" });
                $(".sign-up-form").show();
                $(".login-up-form").hide();

            });

            $(".already_memb").click(function () {

                $(".signin").css({ "border-bottom": "2px solid #f7631b", "color": "white" });
                $(".signup").css({ "border-bottom": "none", "color": "#777" });
                $(".login-box").css({ "min-height": "625px" });
                $(".sign-up-form").hide();
                $(".login-up-form").show();


            });

        });
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row m-0">

                <div class="col-md-6 mx-auto p-0">

                    <div class="card border-0">


                        <div class="login-box">
                            <div class="login-snip">
                                <a href="home.php">
                                    <div class="img-container col-8 m-auto pt-3 pb-3 mb-3">
                                        <img src="images/logo-2.png" class="img-fluid" alt="" />
                                    </div>
                                </a>
                                <h1 class="d-none">Mehdi Institute</h1>
                                <asp:RadioButton runat="server" ID="tab1" GroupName="tab" class="sign-in" Checked="true" /><asp:Label runat="server" AssociatedControlID="tab1" class="tab signin" Text="Login"></asp:Label>
                                <asp:RadioButton runat="server" ID="tab2" GroupName="tab" class="sign-up" /><asp:Label runat="server" class="tab signup" AssociatedControlID="tab2" Text="Sign Up"></asp:Label>
                                <div class="login-space">
                                    <div class="login-up-form">
                                        <div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtemail" ID="encrypt" class="label">Enter Email</asp:Label>
                                                <asp:TextBox runat="server" AccessKey="l" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="input" ID="txtemail" placeholder="Enter your email" />
                                                <asp:RequiredFieldValidator ValidationGroup="loginsubmit" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ValidationGroup="loginsubmit" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Formate" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                                            

                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtpass" ID="decrypt" class="label">Password</asp:Label>
                                                <asp:TextBox  runat="server" ID="txtpass" AccessKey="p" TextMode="Password" class="input" placeholder="Enter your password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                                <asp:RequiredFieldValidator ValidationGroup="loginsubmit" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                                
                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" ForeColor="Red" ID="loginerror" class="label"></asp:Label>
                                            </div>
                                            <div class="group">
                                                <asp:Button runat="server" ValidationGroup="loginsubmit" ID="btnlogin" OnClick="btnlogin_Click"  class="button" Text="Log In" />
                                            </div>
                                        </div>

                                        <div class="hr"></div>
                                        <div class="foot">
                                            <a href="#" class="text-white">Forgot Password?</a>
                                            <br />
                                            <asp:Label runat="server" AssociatedControlID="tab2" class="text-white not_account">Not Have An Account?</asp:Label>
                                        </div>
                                    </div>
                                    <div class="sign-up-form">
                                        <div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtusername" Text="Username" class="label"></asp:Label>
                                                <asp:TextBox runat="server" ID="txtusername" AccessKey="u" class="input" placeholder="Enter Your Username" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Username' " />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ValidationGroup="signupsubmit" runat="server" Operator="DataTypeCheck" Type="String" ControlToValidate="txtusername" ErrorMessage="Please Enter Correct Username" ForeColor="Red"></asp:CompareValidator>
                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtfathername" class="label" Text="Father Name"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="n" ID="txtfathername" class="input" placeholder="Enter Your Father Name" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Father Name' " />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtfathername" ErrorMessage="Please Enter Father Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                                
                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtsignupemail" class="label" Text="Email Address"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="e" ID="txtsignupemail" class="input" placeholder="Enter Your Email Address" name="email" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Email Address' " />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignupemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignupemail" ErrorMessage="Invalid Email Formate" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                                             </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtsignuppass" class="label" Text="Password"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="d" ID="txtsignuppass" TextMode="Password" class="input" placeholder="Create your password" name="pass" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignuppass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>                                                
                                            </div>
                                            <div id="passerror"></div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtsignuprepass" class="label" Text="Repeat Password"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="r" ID="txtsignuprepass" TextMode="Password" class="input" name="repass" placeholder="Repeat your password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignuprepass" ErrorMessage="Please Repeate Password" ForeColor="Red"></asp:RequiredFieldValidator>                                                
                                                <asp:CompareValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignuprepass" ControlToCompare="txtsignuppass" ErrorMessage="Password does not Matched" ForeColor="Red"></asp:CompareValidator>
                                            </div>
                                            <div id="passerro2"></div>
                                            <div class="group">
                                                <asp:label runat="server" AssociatedControlID="txtsignupphone" for="phone" class="label" Text="Phone"></asp:label>
                                                <asp:TextBox runat="server" AccessKey="m" ID="txtsignupphone" class="input" placeholder="Enter your WhatsApp Number" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your WhatsApp Number' " name="phone" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignupphone" ErrorMessage="Please Enter WhatsApp Number" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ValidationGroup="signupsubmit" ControlToValidate="txtsignupphone" runat="server" ErrorMessage="Please Enter Correct WhatsApp Number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>                                              
                                            </div>
                                            <div class="group">
                                                <asp:Button runat="server" ValidationGroup="signupsubmit" ID="btnsignup" class="button" Text="Sign Up" OnClick="btnsignup_Click" />
                                            </div>
                                        </div>
                                        <div class="foot">
                                            <label for="tab1" class="text-white already_memb">Already Member?</label>
                                        </div>
                                        <div class="hr"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
