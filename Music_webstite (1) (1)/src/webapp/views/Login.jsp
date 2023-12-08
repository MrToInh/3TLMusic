<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/LoginCss.css" type="text/css">

</head>
<body>
	<section>
        <div class="form-box">
            <div class="form-value">
                <form action="./LoginServlet" method=get>
                    <h2>Login</h2>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input type="text" name="username"  value ="${user}"required>
                        <label for="">Email</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" name="password" value="${pass}" required>
                        <label for="">Password</label>
                    </div>
                    <div class="forget">
                        <label for=""><a href="EditPassServlet">Forget Password</a></label>
                      
                    </div>
                    <p style="color:red">${MESSAGE}</p>
                    <button>Log in</button>
                    <div class="register">
                         <p>Don't have an account <a href="${pageContext.request.contextPath}/RegisterServlet">Register</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>