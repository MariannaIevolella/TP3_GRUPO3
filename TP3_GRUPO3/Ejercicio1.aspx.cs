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
                    lblMensajeLocalidad.ForeColor = System.Drawing.Color.Red;
                    lblMensajeLocalidad.Text = "El nombre de localidad no puede ser solo números.";
                    return;
                }

                ddlLocalidades.Items.Add(localidad); ///se agrega al DropDownList
                txtLocalidad.Text = ""; /// se limpia el TextBox
                lblMensajeLocalidad.ForeColor = System.Drawing.Color.Green;
                lblMensajeLocalidad.Text = "Localidad guardada correctamente.";
            }


        }
        protected void txtLocalidad_TextChanged(object sender, EventArgs e)
        {
            lblMensajeLocalidad.Text = "";
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

                if (!string.IsNullOrWhiteSpace(txtNombre.Text) &&
                    !string.IsNullOrWhiteSpace(txtContraseña.Text) &&
                    !string.IsNullOrWhiteSpace(txtRepetirCont.Text) &&
                    txtContraseña.Text == txtRepetirCont.Text &&
                    !string.IsNullOrWhiteSpace(txtCorreo.Text) &&
                    !string.IsNullOrWhiteSpace(txtCP.Text) &&
                    ddlLocalidades.SelectedIndex >= 0)
                {
                    lblMensajeBienvenida.Text = "Bienvenido " + txtNombre.Text;
                    lblMensajeBienvenida.ForeColor = System.Drawing.Color.Green;
                    txtNombre.Text = "";
                    txtCorreo.Text = "";
                    txtCP.Text = "";
            }
               
            }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
 }
