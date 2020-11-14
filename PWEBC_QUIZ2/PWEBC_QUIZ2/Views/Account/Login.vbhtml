@ModelType LoginViewModel
@Code
    ViewBag.Title = "Log in"
End Code

<div id="top-wrapper">
    <h2>Log in</h2>
</div>

<div id="wrapper">
    @Using Html.BeginForm("Login", "Account", New With {.ReturnUrl = ViewBag.ReturnUrl}, FormMethod.Post, New With {.class = "form-horizontal", .role = "form"})

        @Html.AntiForgeryToken()
        @Html.ValidationSummary(True, "", New With {.class = "text-danger"})

        @<text>
            <div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.Email, New With {.class = "control-label"})
                            @Html.TextBoxFor(Function(m) m.Email, New With {.class = "form-control", .placeholder = "Enter Your Email"})
                            @Html.ValidationMessageFor(Function(m) m.Email, "", New With {.class = "text-danger"})
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.Password, New With {.class = "control-label"})
                            @Html.PasswordFor(Function(m) m.Password, New With {.class = "form-control", .placeholder = "Enter Your Password"})
                            @Html.ValidationMessageFor(Function(m) m.Password, "", New With {.class = "text-danger"})
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class=form-group>
                            <input type="submit" value="Log in" class="btn btn-success" />
                            @Html.CheckBoxFor(Function(m) m.RememberMe)
                            @Html.LabelFor(Function(m) m.RememberMe)

                            <p>
                                <br />
                                @Html.ActionLink("Register as a New User", "Register")
                            </p>
                        </div>
                    </div>
                </div>

            </div>

        </text>

    End Using
</div>

@Section Scripts
    @Scripts.Render("~/bundles/jqueryval")
End Section
