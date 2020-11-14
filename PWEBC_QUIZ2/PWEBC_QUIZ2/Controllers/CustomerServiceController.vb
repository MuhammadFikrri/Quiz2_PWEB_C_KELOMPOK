Imports System.Web.Mvc

Namespace Controllers
    Public Class CustomerServiceController
        Inherits Controller

        ' GET: CustomerService
        Function Index() As ActionResult
            Return View()
        End Function
    End Class
End Namespace