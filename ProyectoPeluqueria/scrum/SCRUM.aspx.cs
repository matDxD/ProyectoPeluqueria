using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _270423CRUD
{
    public partial class SCRUM : System.Web.UI.Page
    {
        public ModeloDataContext basesdedatos = new ModeloDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BotonEliminar.Attributes.Add("Onclick", "return confirm('Desea Eliminar el registro ?')");
                botonGuardar.Attributes.Add("Onclick", " return alert('Registro Guardado...')");
                botonModificar.Attributes.Add("Onclick", "return alert('Registro modificado...')");
                carga();
            }

        }

        public void carga() { Datos.DataBind(); }
        public void limpiar()
        {
            txtNit.Text = "";
            txtEmpresa.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCiudad.Text = "";
        }


        protected void botonGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int nit =int.Parse(txtNit.Text);
                string empresa = txtEmpresa.Text;
                string direccion = txtDireccion.Text;
                string telefono = txtTelefono.Text;
                string ciudad = txtCiudad.Text;
                basesdedatos.insertarclientes(nit, empresa, direccion, telefono, ciudad);
                carga();
                limpiar();
            }
            catch (Exception ex)
            {
                Response.Write("<scrtipt languages=>alert('error en la informacion...!!!'); </script>");
            }
        }

        protected void botonBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = int.Parse(txtNit.Text);
                int cuentaregistros = 0;
                var registro = basesdedatos.BuscarClientes(nit);
                foreach(var campo in registro)
                {
                    txtEmpresa.Text = campo.empresa;
                    txtDireccion.Text = campo.direccion;
                    txtTelefono.Text = campo.telefono;
                    txtCiudad.Text= campo.ciudad;
                    cuentaregistros = 1;
                }
                if (cuentaregistros == 0)
                {
                    Response.Write("<scrtipt alert('Nit no Existe...!!!') </script>");
                    limpiar();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
        }

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            var misdatos = from registros in basesdedatos.Clientes select registros;
            e.Arguments.TotalRowCount = misdatos.Count();
            e.Result= misdatos;
        }

        protected void botonModificar_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = int.Parse(txtNit.Text);
                string empresa = txtEmpresa.Text;
                string direccion = txtDireccion.Text;
                string telefono = txtTelefono.Text;
                string ciudad = txtCiudad.Text;
                basesdedatos.ActualizarClientes(nit, empresa, direccion, telefono, ciudad);
                carga();
                limpiar();
            }
            catch (System.Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
        }

        protected void BotonEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = int.Parse(txtNit.Text);
                basesdedatos.EliminarClientes(nit);
                carga(); limpiar();
            }
            catch(Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
        }
    }
}