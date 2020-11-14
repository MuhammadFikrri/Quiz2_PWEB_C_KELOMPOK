Imports System.Web.Mvc

Namespace Controllers
    Public Class RoomController
        Inherits Controller

        ' GET: Room
        Function Index() As ActionResult
            Return View()
        End Function
    End Class
End Namespace