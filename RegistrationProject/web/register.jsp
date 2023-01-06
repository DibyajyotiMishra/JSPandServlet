<%-- 
    Document   : register
    Created on : 05-Jan-2023, 8:35:11 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
        <style>
            html {
                width: 100%;
                height: 100%;
                background-color: #03203C;
            }
            .form-container {
                margin-top: 5%;
                margin-left: 15%;
                margin-right: 15%;
            }
        </style>
    </head>
    <body>
        <div class="form-container box">
            <form id="userform" action="register" method="post">
                <div class="field">
                    <label class="label">Name</label>
                    <div class="control">
                        <input class="input" name="name" type="text" placeholder="e.g Alex Smith">
                    </div>
                </div>

                <div class="field">
                    <label class="label">Email</label>
                    <div class="control">
                        <input class="input" type="email" name="email" placeholder="e.g. alexsmith@gmail.com">
                    </div>
                </div>

                <div class="field">
                    <label class="label">Password</label>
                    <div class="control">
                        <input class="input" type="password" name="password">
                    </div>
                </div>



                <div class="field is-grouped">
                    <div class="control">
                        <button class="button is-link" type="submit">Submit</button>
                    </div>
                    <div>
                        <button class="button is-link is-light" type="reset">Cancel</button>
                    </div>
                </div>
            </form>
             

            <div class="waiter column is-two-thirds is-offset-2" style="display: none;">
                <progress class="progress is-small is-dark" max="100">45%</progress>
                <h5 class="subtitle is-5" style="text-align: center;">Please wait...</h5>
            </div>


            <div id="success-msg" class="column is-two-thirds is-offset-2" style="display: none">
                <h4 class="has-text-success">Congrats, Successfully Registered</h4>
            </div>
        </div>̰


        <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
        crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
                console.log("JQuery mounted and ready.");

                $("#userform").on('submit', function (event) {
                    event.preventDefault();

                    let formData = $(this).serialize();

                    $(".waiter").show();
                    $("#userform").hide();
                    $("#success-msg").hide();

                    $.ajax({
                        url: "register",
                        data: formData,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("success");
                            $(".waiter").hide();
                            $("#userform").show();
                            $("#userform")[0].reset();
                            if(data.trim() == "Success") {
                               $("#success-msg").show(); 
                            }
                            setTimeout(function () {
                                $("#success-msg").hide();
                            }, 1500);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("error...");
                            $(".waiter").hide();
                            $("#userform").show();
                            if(data.trim() == "Error") {
                               $("#success-msg").html('Registration Failed').removeClass("has-text-success").addClass("has-text-danger").show(); 
                            }
                            setTimeout(function () {
                                $("#success-msg").hide();
                            }, 1500);
                        }
                    })
                })
            });
        </script>
    </body>
</html>
