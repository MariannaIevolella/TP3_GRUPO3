<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_GRUPO3.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        div {
            height: 40px;
        }

        .auto-style1 {
            height: 160px;
        }
        .auto-style2 {
            margin-left: 199px;
        }
        .auto-style3 {
            height: 44px;
        }

        .auto-style4 {
            margin-left: 82px;
        }

        .auto-style5 {
            margin-left: 117px;
        }

        .auto-style6 {
            margin-left: 66px;
        }
        .auto-style7 {
            margin-left: 67px;
        }
        .auto-style8 {
            margin-left: 170px;
        }
        .auto-style9 {
            margin-left: 112px;
        }

        .auto-style10 {
            margin-left: 265px;
        }

        .auto-style11 {
            height: 94px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
            <asp:Label ID="lblLocalidad" runat="server" Font-Bold="True" Font-Size="14pt" Text="Localidad"></asp:Label>
            <asp:Label ID="lblNombreLocalidad" runat="server" Font-Bold="True" Font-Size="14pt" Text="Nombre de Localidad:"></asp:Label>
            <asp:TextBox ID="txtLocalidad" runat="server"  BackColor="White" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="13pt" Height="20px" OnTextChanged="txtLocalidad_TextChanged" Width="248px" ValidationGroup="Grupo1"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="&quot;Ingrese Localidad&quot;" ForeColor="Red" ValidationGroup="Grupo1"></asp:RequiredFieldValidator>
            <br />
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="&quot;La localidad ya fue ingresada&quot;" ForeColor="Red" OnServerValidate="cvRepetida_ServerValidate" ValidationGroup="Grupo1"></asp:CustomValidator>

            <br />
            <asp:Button ID="btnGuardarLocalidad" runat="server" BackColor="#0099FF" BorderStyle="Solid" Font-Bold="True" Font-Size="13pt" Height="32px" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" Width="225px" ValidationGroup="Grupo1" CssClass="auto-style10" />   
            <br />
          </div>

            <div class="auto-style11">
            <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Size="13pt"></asp:Label>
                <br />
                <asp:Label ID="lblMensajeUsuario" runat="server" BackColor="White" BorderColor="Red" ForeColor="Red" Text="&quot;Todos los campos son obligatorios&quot;" Visible="False"></asp:Label>
               <br />
            <asp:Label ID="lblUsuarios" runat="server" Font-Bold="True" Font-Size="14pt" Text="Usuarios"></asp:Label>
            </div>
            <div>  
                 Nombre Usuario:
                 <asp:TextBox ID="txtNombre" runat="server"  BackColor="White" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="13pt" Height="20px" OnTextChanged="txtLocalidad_TextChanged" Width="200px" ValidationGroup="Grupo2" CssClass="auto-style4"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar un usuario." ForeColor="Red" ValidationGroup="Grupo2">Debe ingresar un usuario.</asp:RequiredFieldValidator>
            </div>
            <div>
                 Contraseña:
                 <asp:TextBox ID="txtContraseña" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="13pt" Height="20px" OnTextChanged="txtLocalidad_TextChanged" Width="200px" style="margin-bottom: 0px" TextMode="Password" ValidationGroup="Grupo2" CssClass="auto-style5"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Debe ingresar una contraseña." ForeColor="Red" ValidationGroup="Grupo2"></asp:RequiredFieldValidator>
            </div>
            <div>
                Repetir Contraseña:
                <asp:TextBox ID="txtRepetirCont" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="13pt" Height="20px" OnTextChanged="txtLocalidad_TextChanged" Width="200px" TextMode="Password" ValidationGroup="Grupo2" CssClass="auto-style6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRepetirCont" runat="server" ControlToValidate="txtRepetirCont" ValidationGroup="Grupo2" ErrorMessage="Debe repetir contraseña." ForeColor="Red">Debe repetir contraseña.</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirCont" ErrorMessage="Contraseña incorrecta" ForeColor="Red" ValidationGroup="Grupo2">Contraseña incorrecta</asp:CompareValidator>
            </div>
            <div>
                Correo Electronico:
                 <asp:TextBox ID="txtCorreo" runat="server"  BackColor="White" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="13pt" Height="20px" OnTextChanged="txtLocalidad_TextChanged" Width="200px" ValidationGroup="Grupo2" CssClass="auto-style7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar un correo electronico." ForeColor="Red" ValidationGroup="Grupo2">Debe ingresar un correo electronico.</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar una direccion de correo valida." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Grupo2">Debe ingresar una direccion de correo valida.</asp:RegularExpressionValidator>
            </div>
            <div>
                 CP:
                 <asp:TextBox ID="txtCP" runat="server"  BackColor="White" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Size="13pt" Height="20px" OnTextChanged="txtLocalidad_TextChanged" Width="200px" ValidationGroup="Grupo2" CssClass="auto-style8"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Debe ingresar un codigo postal." ForeColor="Red" ValidationGroup="Grupo3">Debe ingresar un codigo postal.</asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="rvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="El codigo postal debe tener 4 cifras." ForeColor="Red" MaximumValue="9999" MinimumValue="1000" Type="Integer" ValidationGroup="Grupo2">El codigo postal debe tener 4 cifras.</asp:RangeValidator>
            </div>
            <div>
                Localidades: <asp:DropDownList ID="ddlLocalidades" runat="server" Font-Bold="False" Font-Size="14pt" Height="25px" Width="196px" style="margin-bottom: 0px" ValidationGroup="Grupo2" CssClass="auto-style9"></asp:DropDownList>
            </div>
            <div class="auto-style3" id="lblMensajeIngresado">
                <br />
            <asp:Button ID="btnGuardarUsuario" runat="server" OnClick="btnGuardarUsuario_Click" Text="Guardar Usuario" Width="155px" ValidationGroup="Grupo2" CssClass="auto-style2" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Button ID="btnIrnicio" runat="server" OnClick="Button1_Click" Text="Ir a inicio .aspx" />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
