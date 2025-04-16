using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO3
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) /// verifica que los validadores pasaron correctamente
            {
                string localidad = txtLocalidad.Text.Trim();  /// se guarda lo que escribio el usuario; 

                if (localidad.All(char.IsDigit))
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "El nombre de localidad no puede ser solo números.";
                    return;
                }

                ddlLocalidades.Items.Add(localidad); ///se agrega al DropDownList
                txtLocalidad.Text = ""; /// se limpia el TextBox
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Localidad guardada correctamente.";
            }


        }
        protected void txtLocalidad_TextChanged(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
        }
        protected void cvRepetida_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nuevaLocalidad = args.Value.Trim().ToLower();/// texto que el usuario ingreso; elimina espacios en blanco;convierte todo a minuscula.

            bool existe = ddlLocalidades.Items /// accede a todo el DropDownList
                            .Cast<ListItem>()
                            .Any(item => item.Text.Trim().ToLower() == nuevaLocalidad); ///busca si alguno de esos ítems es igual al que se está intentando ingresar.
                                                                                        /// item.Text.Trim().ToLower(): Recorro cada ítem del DropDownList y me fijo si alguno tiene el mismo texto, en mayúsculas y sin espacios, que el que el usuario ingreso.
            args.IsValid = !existe; /// para decir si es valido 
        }


        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            // Verificar si pasaron todos los validadores
            if (Page.IsValid)
            {
                string nombreUsuario = txtNombre.Text.Trim();
                string contrasena = txtContraseña.Text.Trim();
                string repetirContrasena = txtRepetirCont.Text.Trim();
                string correo = txtCorreo.Text.Trim();
                string cp = txtCP.Text.Trim();
                string localidadSeleccionada = ddlLocalidades.SelectedValue;

                {
                    lblMensajeUsuario.Text = "Todos los campos son obligatorios.";
                    lblMensajeUsuario.ForeColor = System.Drawing.Color.Red;
                    lblMensajeUsuario.Visible = true;
                    return;
                }

                


            }
        }
    }
}