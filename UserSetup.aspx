﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSetup.aspx.cs" Inherits="CricketEcommerce.UserSetup" %>

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
                                <a href="#" class="btn btn-primary font-weight-bolder">
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
                                    </span>New User</a>
                                <!--end::Button-->
                            </div>
                        </div>
                        <div class="card-body">

                             <%--<asp:GridView CssClass="table" runat="server" ID="GV" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="User ID" />
                                        <asp:BoundField DataField="UserName" HeaderText="User Name" />
                                        <asp:BoundField DataField="FatherName" HeaderText="FatherName" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" />
                                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                    </Columns>
                                </asp:GridView>--%>
                            <!--begin: Datatable-->
                            <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered table-checkable dataTable no-footer dtr-inline collapsed" id="kt_datatable" role="grid" aria-describedby="kt_datatable_info" style="width: 977px;">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting" tabindex="0" aria-controls="kt_datatable" rowspan="1" colspan="1" style="width: 52px;" aria-label="Country: activate to sort column ascending">Country</th>
                                                    <th class="sorting" tabindex="0" aria-controls="kt_datatable" rowspan="1" colspan="1" style="width: 44px;" aria-label="Ship City: activate to sort column ascending">Ship City</th>
                                                    <th class="sorting" tabindex="0" aria-controls="kt_datatable" rowspan="1" colspan="1" style="width: 75px;" aria-label="Type: activate to sort column ascending">Type</th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 0px;" aria-label="Actions">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                
                                                <tr role="row" class="even">
                                                    <td class="">
                                                       pakistan
                                                    </td>

                                                 
                                                    <td><span class="label label-lg font-weight-boldlabel-light-success label-inline">Pending</span></td>
                                                    <td><span class="label label-success label-dot mr-2"></span><span class="font-weight-bold text-success">Direct</span></td>
                                                    <td>
                                                        <div class="dropdown dropdown-inline"><a href="javascript:;" class="btn btn-sm btn-clean btn-icon mr-2" data-toggle="dropdown"><span class="svg-icon svg-icon-md">
                                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                    <rect x="0" y="0" width="24" height="24"></rect>
                                                                    <path d="M5,8.6862915 L5,5 L8.6862915,5 L11.5857864,2.10050506 L14.4852814,5 L19,5 L19,9.51471863 L21.4852814,12 L19,14.4852814 L19,19 L14.4852814,19 L11.5857864,21.8994949 L8.6862915,19 L5,19 L5,15.3137085 L1.6862915,12 L5,8.6862915 Z M12,15 C13.6568542,15 15,13.6568542 15,12 C15,10.3431458 13.6568542,9 12,9 C10.3431458,9 9,10.3431458 9,12 C9,13.6568542 10.3431458,15 12,15 Z" fill="#000000"></path>
                                                                </g>
                                                            </svg>
                                                        </span></a>
                                                            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                                                <ul class="navi flex-column navi-hover py-2">
                                                                    <li class="navi-header font-weight-bolder text-uppercase font-size-xs text-primary pb-2">Choose an action:	                                    </li>
                                                                    <li class="navi-item"><a href="#" class="navi-link"><span class="navi-icon"><i class="la la-print"></i></span><span class="navi-text">Print</span>	                                        </a></li>
                                                                    <li class="navi-item"><a href="#" class="navi-link"><span class="navi-icon"><i class="la la-copy"></i></span><span class="navi-text">Copy</span>	                                        </a></li>
                                                                    <li class="navi-item"><a href="#" class="navi-link"><span class="navi-icon"><i class="la la-file-excel-o"></i></span><span class="navi-text">Excel</span>	                                        </a></li>
                                                                    <li class="navi-item"><a href="#" class="navi-link"><span class="navi-icon"><i class="la la-file-text-o"></i></span><span class="navi-text">CSV</span>	                                        </a></li>
                                                                    <li class="navi-item"><a href="#" class="navi-link"><span class="navi-icon"><i class="la la-file-pdf-o"></i></span><span class="navi-text">PDF</span>	                                        </a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <a href="javascript:;" class="btn btn-sm btn-clean btn-icon mr-2" title="Edit details"><span class="svg-icon svg-icon-md">
                                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                    <rect x="0" y="0" width="24" height="24"></rect>
                                                                    <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "></path>
                                                                    <rect fill="#000000" opacity="0.3" x="5" y="20" width="15" height="2" rx="1"></rect>
                                                                </g>
                                                            </svg>
                                                        </span></a><a href="javascript:;" class="btn btn-sm btn-clean btn-icon" title="Delete"><span class="svg-icon svg-icon-md">
                                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                    <rect x="0" y="0" width="24" height="24"></rect>
                                                                    <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z" fill="#000000" fill-rule="nonzero"></path>
                                                                    <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z" fill="#000000" opacity="0.3"></path>
                                                                </g>
                                                            </svg>
                                                        </span></a></td>
                                                </tr>
                                            </tbody>
                                        </table>
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
