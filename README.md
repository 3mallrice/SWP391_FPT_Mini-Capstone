# TreeShop Auction - Java Web Application

TreeShop Auction is a Java web application with added auction functionality. The application allows users to view products, add them to cart, and place bids on auction items. The application is built with HTML/CSS, JavaScript for the front-end, and Java Ant for the back-end. MS SQL is used for the database and the IDE used for development is Netbeans.



### Technologies Used

* HTML/CSS and Javascript 
* Java with Apache Ant
* MS SQL Server
* Netbeans IDE

### Functions

TreeShop provides users with features such as viewing, searching, and adding products to their shopping cart, as well as offering an admin dashboard and other management functions.

```java

public class AddToCartServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            String pid = request.getParameter("PID");

            // get session that is storing the shopping cart
            HttpSession session = request.getSession();

            if (session != null) {
                HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
                if (cart == null) {   
                    cart = new HashMap<String, Integer>();
                    cart.put(pid, 1);
                } else {
                    Integer tmp = cart.get(pid);
                    if (tmp == null) {
                        cart.put(pid, 1);
                    } else {
                        tmp++;
                        cart.put(pid, tmp);
                    }
                }
                session.setAttribute("cart", cart);
                response.sendRedirect("index.jsp");
            }
        }
    }

```

### Credits

TreeShop was developed by [`ChanhXaoSa`](https://github.com/ChanhXaoSa), [`Emallrice`](https://github.com/emallrice), [`LETUANKIET29`](https://github.com/LETUANKIET29) as a project for SWT391 - Software development project.

### Contributing

If you find a bug or want to suggest an enhancement, please submit an issue or pull request. We welcome contributions from the community.

### License

Copyright © 2023 TreeShop team - SWP391
