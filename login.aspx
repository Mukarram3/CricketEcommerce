<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CricketEcommerce.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login/Sign Up</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <%--<link rel="stylesheet" href="assets/css/login.css" />--%>

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet" />

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

	<link rel="stylesheet" href="assets/css/style.css" />

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/popper.js"></script>
	<script src="assets/js/main.js"></script>




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
<body  class="img js-fullheight" style="background-image: url(assets/images/backgroudimage.JPEG);">
    <form id="form1" runat="server" class="signin-form">
    <section class="ftco-section">
		<div class="container">
			
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
					
                        <asp:RadioButton runat="server" ID="tab1" GroupName="tab" class="sign-in" Checked="true" /><asp:Label runat="server" AssociatedControlID="tab1" class="tab signin" Text="Login"></asp:Label>
                                <asp:RadioButton runat="server" ID="tab2" GroupName="tab" class="sign-up" /><asp:Label runat="server" class="tab signup" AssociatedControlID="tab2" Text="Sign Up"></asp:Label>

						<div class="signin-form">
							<div class="login-up-form">
                                        <div>
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="txtemail" ID="Label1" class="label">Enter Email</asp:Label>
                                                <asp:TextBox runat="server" AccessKey="l" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="form-control" ID="txtemail" placeholder="Enter your email" />
                                                <asp:RequiredFieldValidator ValidationGroup="loginsubmit" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ValidationGroup="loginsubmit" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Formate" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                                            

                                            </div>
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="txtpass" ID="Label2" class="label">Password</asp:Label>
                                                <asp:TextBox  runat="server" ID="txtpass" AccessKey="p" TextMode="Password" class="form-control" placeholder="Enter your password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                                <asp:Label ID="togglepass" runat="server"
									class="fa fa-fw fa-eye field-icon toggle-password"></asp:Label>
                                                <asp:RequiredFieldValidator ValidationGroup="loginsubmit" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                                
                                            </div>
                                            <div class="form-group">
                                                <asp:Label runat="server" ForeColor="Red" ID="loginerror" class="label"></asp:Label>
                                            </div>
                                            <div class="form-group">
                                                <asp:Button runat="server" ValidationGroup="loginsubmit" ID="btnlogin" OnClick="btnlogin_Click"  class="form-control btn btn-primary submit px-3" Text="Log In" />
                                            </div>
                                        </div>
                                    
                                <div class="hr"></div>
                                        <div class="foot">
                                            <a href="#" class="text-white">Forgot Password?</a>
                                            <br />
                                            <asp:Label runat="server" AssociatedControlID="tab2" class="text-white not_account">Not Have An Account?</asp:Label>
                                        </div>
                                    </div>
								
							</div>
                        <div class="sign-up-form">
                                        <div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtusername" Text="Username" class="label"></asp:Label>
                                                <asp:TextBox runat="server" ID="txtusername" AccessKey="u" class="form-control" placeholder="Enter Your Username" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Username' " />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ValidationGroup="signupsubmit" runat="server" Operator="DataTypeCheck" Type="String" ControlToValidate="txtusername" ErrorMessage="Please Enter Correct Username" ForeColor="Red"></asp:CompareValidator>
                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtfathername" class="label" Text="Father Name"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="n" ID="txtfathername" class="form-control" placeholder="Enter Your Father Name" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Father Name' " />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtfathername" ErrorMessage="Please Enter Father Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                                
                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtsignupemail" class="label" Text="Email Address"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="e" ID="txtsignupemail" class="form-control" placeholder="Enter Your Email Address" name="email" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your Email Address' " />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignupemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignupemail" ErrorMessage="Invalid Email Formate" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                                             </div>
                                                <asp:Label runat="server" ID="emailexist" ForeColor="Red"></asp:Label>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtsignuppass" class="label" Text="Password"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="d" ID="txtsignuppass" TextMode="Password" class="form-control" placeholder="Create your password" name="pass" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignuppass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>                                                
                                            </div>
                                            
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="txtsignuprepass" class="label" Text="Repeat Password"></asp:Label>
                                                <asp:TextBox runat="server" AccessKey="r" ID="txtsignuprepass" TextMode="Password" class="form-control" name="repass" placeholder="Repeat your password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Minimum 8 Only Alphabets and Digits Allowed'" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignuprepass" ErrorMessage="Please Repeate Password" ForeColor="Red"></asp:RequiredFieldValidator>                                                
                                                <asp:CompareValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignuprepass" ControlToCompare="txtsignuppass" ErrorMessage="Password does not Matched" ForeColor="Red"></asp:CompareValidator>
                                            </div>
                                            <div class="group">
                                                <asp:Label runat="server" AssociatedControlID="file" class="label" Text="Choose Image"></asp:Label>
                                                <asp:FileUpload runat="server" ID="file" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="file" ErrorMessage="Please Choose Image" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="group">
                                                <asp:label runat="server" AssociatedControlID="txtsignupphone" for="phone" class="label" Text="Phone"></asp:label>
                                                <asp:TextBox runat="server" AccessKey="m" ID="txtsignupphone" class="form-control" placeholder="Enter your WhatsApp Number" onfocus="this.placeholder='' " onblur="this.placeholder='Enter Your WhatsApp Number' " name="phone" />
                                                <asp:RequiredFieldValidator ValidationGroup="signupsubmit" runat="server" ControlToValidate="txtsignupphone" ErrorMessage="Please Enter WhatsApp Number" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <%--<asp:CompareValidator ValidationGroup="signupsubmit" ControlToValidate="txtsignupphone" runat="server" ErrorMessage="Please Enter Correct WhatsApp Number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>--%>                                              
                                            </div>
                                            <div class="group">
                                                <asp:Button runat="server" ValidationGroup="signupsubmit" ID="btnsignup" class="form-control btn btn-primary submit px-3" Text="Sign Up" OnClick="btnsignup_Click" />
                                            </div>
                                        </div>
                                        <div class="foot">
                                            <label for="tab1" class="text-white already_memb">Already Member?</label>
                                        </div>
                                        <div class="hr"></div>
                                    </div>
							
							
						</div>
						<p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
						<div class="social d-flex text-center">
							<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span>
								Facebook</a>
							<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span>
								Twitter</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
        </form>
</body>
</html>
