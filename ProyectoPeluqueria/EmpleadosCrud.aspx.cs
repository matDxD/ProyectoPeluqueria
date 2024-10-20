using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPeluqueria
{
    public partial class EmpleadosCrud : System.Web.UI.Page
    {
        public ModeloPDataContext basesdedatos = new ModeloPDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            txtCedulac.Text = "";
            txtNombre.Text = "";
            txtNumero.Text = "";
            txtCorreo.Text = "";

        }

        protected void botonGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int cedulac = int.Parse(txtCedulac.Text);
                string nombre = txtNombre.Text;
                string numero = txtNumero.Text;
                string correo = txtCorreo.Text;
                int ncortes = int.Parse(txtNcortes.Text);

                basesdedatos.insertarEmpleado(cedulac, nombre, numero, correo,ncortes);
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
                int cedulaP = int.Parse(txtCedulac.Text);
                int cuentaregistros = 0;
                var registro = basesdedatos.buscarEmpleado(cedulaP);
                foreach (var campo in registro)
                {
                    txtNombre.Text = campo.nombre;
                    txtNumero.Text = campo.numero;
                    txtCorreo.Text = campo.direccion;
                    txtNcortes.Text = ""+campo.Ncortes;

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

        protected void botonModificar_Click(object sender, EventArgs e)
        {
            try
            {
                int cedula = int.Parse(txtCedulac.Text);
                string nombre = txtNombre.Text;
                string numero = txtNumero.Text;
                string correo = txtCorreo.Text;
                int ncortes = int.Parse(txtNcortes.Text);
                basesdedatos.actualizarEmpleado(cedula, nombre, numero, correo, ncortes);
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
                int cedula = int.Parse(txtCedulac.Text);
                basesdedatos.eliminarPeluquero(cedula);
                carga(); limpiar();
            }
            catch (Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
        }

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            var misdatos = from registros in basesdedatos.Peluquero select registros;
            e.Arguments.TotalRowCount = misdatos.Count();
            e.Result = misdatos;
        }
    }
}