

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="d" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html class="no-js" lang="en">
    <head> 
        <style>
            table > thead > tr > th{
                font-size: 16px;
                color: #858796;
                text-align: center;
            }
            table > tbody > tr > td{
                font-size: 14px;
            }
            .thongtin-dathang > label {

            }
            .thongtin-gia > label{
                font-weight: 600;
                color: red;
            }
            .thongtin-gia > span{
                font-weight: 600;
                color: red;
            }
            .status > span{
                color: #FF9900;
            }
            .title-ctdh{
                margin-bottom: 20px;
            }

        </style>

        <jsp:include page="../head.jsp"></jsp:include>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
        </head>


        <body id="page-top">

            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar menu  -->


            <jsp:include page="../menu.jsp"></jsp:include>



                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->


                    <jsp:include page="../topbar.jsp"></jsp:include>

                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->


                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">Tables</h1>


                            <!-- DataTales Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Th??ng tin ????n ha??ng</h6>
                                </div>
                                <div class="card-body">
                                    <div class="container-fluid">
                                        <div class="wrap title-ctdh">
                                            <a href="${pageContext.request.contextPath}/Admin/donhang/listConfirm">????n ch??a xa??c nh????n</a>
                                            <span>||</span>
                                            <a href="${pageContext.request.contextPath}/Admin/donhang/listDelivery">????n ??ang giao</a>
                                            <span>||</span>
                                            <a href="${pageContext.request.contextPath}/Admin/donhang/list">T????t ca?? ????n</a>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <div class="wrap-donhang-chitiet">
                                            <di class="container-donhang-chitiet">
                                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th class="col-8" scope="col">Th??ng tin ????n ha??ng</th>
                                                            
                                                            <th class="col-1" scope="col">Tra??ng tha??i</th>
                                                           
                                                            
                                                        </tr>
                                                    </thead>
                                                <c:forEach items="${donhang}" var="dh">
                                                    <tbody>
                                                        <tr>

                                                            <td>
                                                                <div class="row thongtin-dathang">
                                                                    <label class="col-4">Ma?? ????n ha??ng : </label>
                                                                    <span class="col-8">${dh.donHang.id}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label class="col-4">T??n ng??????i nh????n : </label>
                                                                    <span class="col-8">${dh.donHang.tenNguoiNhan}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label class="col-4">??i??a chi?? nh????n : </label>
                                                                    <span class="col-8">${dh.donHang.diaChiNhan}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label class="col-4">S??T ng??????i nh????n : </label>
                                                                    <span class="col-8">${dh.donHang.SDTNguoiNhan}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label class="col-4">Ghi Chu?? : </label>
                                                                    <span class="col-8">${dh.donHang.ghiChu}</span>
                                                                </div>
                                                            
                                                            
<!--                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-5">Ma?? kha??ch ha??ng : </label>
                                                                    <span  class="col-7">${dh.donHang.maNguoiDung.id}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-5">T??n kha??ch ha??ng : </label>
                                                                    <span  class="col-7">${dh.donHang.maNguoiDung.hoTen}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-5">Email : </label>
                                                                    <span  class="col-7">${dh.donHang.maNguoiDung.email}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-5">S??T : </label>
                                                                    <span  class="col-7">${dh.donHang.maNguoiDung.sdt}</span>
                                                                </div>-->
                                                            
                                                            
                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-4">Ma?? SP : </label>
                                                                    <span name="idSP" class="col-8">${dh.sanPham.id}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-4">T??n SP : </label>
                                                                    <span  class="col-8">${dh.sanPham.ten}</span>
                                                                </div>
                                                                <div class="row thongtin-dathang">
                                                                    <label  class="col-4">S???? l??????ng : </label>
                                                                    <span  class="col-8">  ${dh.soLuong}</span>
                                                                </div>
                                                                <div class="row thongtin-gia">
                                                                    <label  class="col-4">T????ng gia?? : </label>
                                                                    <span  class="col-8">
                                                                        <fmt:formatNumber value = "${dh.donGia}" type = "currency"/>
                                                                    </span>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="status row thongtin-dathang">
                                                                    <c:if test="${dh.status == 1}">
                                                                        <span style="padding-left: 10px;">Ch???? xa??c nh????n</span>
                                                                    </c:if>
                                                                    <c:if test="${dh.status == 2}">
                                                                        <span style="padding-left: 10px;color: #006400">??ang giao</span>
                                                                    </c:if>
                                                                    <c:if test="${dh.status == 3}">
                                                                        <span style="padding-left: 10px;color: #053eff;font-weight: 700">??a?? hoa??n tha??nh</span>
                                                                    </c:if>
                                                                        <c:if test="${dh.status == 4}">
                                                                        <span style="padding-left: 10px;color: red;font-weight: 700">??a?? hu??y</span>
                                                                    </c:if>
                                                                </div>
                                                            </td>
                                                            <c:if test="${dh.status == 1}">
                                                                <td>

                                                                    <a href="${pageContext.request.contextPath}/Admin/donhang/updateStaus1?idSP=${dh.sanPham.id}&&idDh=${dh.donHang.id}">
                                                                        <button onclick="return confirm('Xa??c nh????n l????y ha??ng tha??nh c??ng !')"  type="submit" class="btn btn-warning">Xa??c nh????n</button>
                                                                    </a>
                                                                    <a href="${pageContext.request.contextPath}/Admin/donhang/delete?idSP=${dh.sanPham.id}&&idDh=${dh.donHang.id}">
                                                                        <button onclick="return confirm('Xa??c nh????n hu??y ????n !')"  type="submit" class="btn btn-danger">Hu??y ????n</button>
                                                                    </a>
                                                                        <a href="${pageContext.request.contextPath}/Admin/donhang/initupdate?idSP=${dh.sanPham.id}&&idDh=${dh.donHang.id}">
                                                                        <button  type="submit" class="btn btn-primary">C????p nh????t</button>
                                                                    </a>
                                                                </td>
                                                            </c:if>
                                                            <c:if test="${dh.status == 2}">
                                                                <td>
                                                                    <a href="${pageContext.request.contextPath}/Admin/donhang/updateStaus2?idSP=${dh.sanPham.id}&&idDh=${dh.donHang.id}">
                                                                        <button onclick="return confirm('Xa??c nh????n hoa??n tha??nh ????n !')" type="submit" class="btn btn-success">Hoa??n tha??nh</button>
                                                                    </a>
                                                                </td>

                                                            </c:if>

                                                        </tr>
                                                    </tbody>
                                                </c:forEach>
                                            </table>
                                        </di>
                                    </div>
                                </div>
                            </div>

                                        
                                        <nav aria-label="...">
                                <ul class="pagination">
                                    <li class="page-item disabled">
                                        <span class="page-link">Previous</span>
                                    </li>
<!--                                    <li class="page-item"><a class="page-link" href="">1</a></li>
                                    <li class="page-item active">
                                        <span class="page-link">
                                            2
                                            <span class="sr-only">(current)</span>
                                        </span>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="">3</a></li>-->
                                    
                                    <c:forEach var="i" begin="1" end="${totalPage}">
                                        <c:choose>
                                            <c:when test="${page==i}">
                                                <li class="active page-item"><a name="page" class="page-link" href="${pageContext.request.contextPath}/Admin/donhang/list?page=${i}">${i}</a></li>
                                            </c:when>
                                            <c:otherwise>
                                               
                                                    <li class= " page-item"><a class="page-link" href="${pageContext.request.contextPath}/Admin/donhang/list?page=${i}">${i}</a></li>
                                               
                                            </c:otherwise>
                                        </c:choose>
                                        
                                    </c:forEach>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                    </div>




                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <jsp:include page="../footer.jsp"></jsp:include>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">??</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>


    </body>






</html>







