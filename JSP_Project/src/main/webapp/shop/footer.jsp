<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
    <footer id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">Sogondak Shop</h2>
                    <ul class="list-unstyled footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            대구 광역시 어딘가의 본가에서 택배받음
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-2643-2428">010-2643-2428</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:sogondak_@naver.com">sogondak_@naver.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 border-bottom pb-3 border-light">상품</h2>
                    <ul class="list-unstyled footer-link-list">
                        <li><a class="text-decoration-none" href="${pageContext.request.contextPath}/ItemList.it">씰스티커</a></li>
                        <li><a class="text-decoration-none" href="${pageContext.request.contextPath}/ItemList.it">메모지</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 border-bottom pb-3 border-light">상세정보</h2>
                    <ul class="list-unstyled footer-link-list">
                        <li><a class="text-decoration-none" href="${pageContext.request.contextPath}/shop/index.jsp">홈</a></li>
                        <li><a class="text-decoration-none" href="${pageContext.request.contextPath}/shop/about.jsp">소개</a></li>
                        <li><a class="text-decoration-none" href="${pageContext.request.contextPath}/BoardList.bo">고객센터</a></li>
                    </ul>
                </div>

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-decoration-none" target="_blank" href="https://www.facebook.com/profile.php?id=100083355710843&mibextid=LQQJ4d"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-decoration-none" target="_blank" href="https://www.instagram.com/sogondak/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
<!--                         <li class="list-inline-item border border-light rounded-circle text-center"> -->
<!--                             <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a> -->
<!--                         </li> -->
<!--                         <li class="list-inline-item border border-light rounded-circle text-center"> -->
<!--                             <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a> -->
<!--                         </li> -->
                    </ul>
                </div>
<!--                 <div class="col-auto"> -->
<!--                     <label class="sr-only" for="subscribeEmail">Email address</label> -->
<!--                     <div class="input-group mb-2"> -->
<!--                         <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address"> -->
<!--                         <div class="input-group-text btn-success text-light">Subscribe</div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2023 twenty
	                        | Designed by sogondak
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
     <!-- Start Script -->
    <script src="${pageContext.request.contextPath}/shop/assets/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/shop/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/shop/assets/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/shop/assets/js/templatemo.js"></script>
    <script src="${pageContext.request.contextPath}/shop/assets/js/custom.js"></script>
    <!-- End Script -->
    
    
</body>
</html>