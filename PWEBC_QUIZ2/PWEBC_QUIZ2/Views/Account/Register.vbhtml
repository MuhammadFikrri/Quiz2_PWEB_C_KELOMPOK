@ModelType RegisterViewModel
@Code
    ViewBag.Title = "Register"
End Code

<div id="top-wrapper">
    <h2>Registration</h2>
</div>

<div id="wrapper">
    @Using Html.BeginForm("Register", "Account", FormMethod.Post, New With {.class = "form-horizontal", .role = "form"})

        @Html.AntiForgeryToken()

        @<text>

            @Html.ValidationSummary("", New With {.class = "text-danger"})
            <div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.FirstName, New With {.class = "control-label"})
                            @Html.TextBoxFor(Function(m) m.FirstName, New With {.class = "form-control", .placeholder = "Enter Your First Name"})
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.LastName, New With {.class = "control-label"})
                            @Html.TextBoxFor(Function(m) m.LastName, New With {.class = "form-control", .placeholder = "Enter Your Last Name"})
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.Email, New With {.class = "control-label"})
                            @Html.TextBoxFor(Function(m) m.Email, New With {.class = "form-control", .placeholder = "Enter Your Email"})
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.Password, New With {.class = "control-label"})
                            @Html.PasswordFor(Function(m) m.Password, New With {.class = "form-control", .placeholder = "Enter Your Password"})
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class=form-group>
                            @Html.LabelFor(Function(m) m.ConfirmPassword, New With {.class = "control-label"})
                            @Html.PasswordFor(Function(m) m.ConfirmPassword, New With {.class = "form-control", .placeholder = "Enter Your Password"})
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div class=form-group>
                            <input type="submit" class="btn btn-success" value="Register" />
                        </div>
                    </div>
                </div>
            </div>





        </text>
    End Using
</div>

@section Scripts
    @Scripts.Render("~/bundles/jqueryval")
End Section
