using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPeluqueria
{
    public partial class AsignacionHorario : System.Web.UI.Page
    {
        public ModeloHorarioDataContext Horario = new ModeloHorarioDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
            
    
                carga();
            }
        }
           public void carga() { Datos.DataBind(); }
        public void limpiar()
        {
            txtCedulaP.Text = "";
            txtDisponibilidad.Text = "";
            txtHfin.Text = "";
            txtHinicio.Text = "";
            txtidHorario.Text = "";
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int CedulaP = int.Parse(txtCedulaP.Text);
            int Disponibilidad = int.Parse(txtDisponibilidad.Text);
            int Hfin = int.Parse(txtHfin.Text);
            int Hinicio = int.Parse(txtHinicio.Text);
            int idHorario = int.Parse(txtidHorario.Text);
            Horario.insertarHorarioP(Disponibilidad,idHorario,Hinicio,Hfin,CedulaP,"");
            limpiar();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
          
           
            try
            {
                int cuentaregistros = 0;
                int cedulaP = int.Parse(txtCedulaP.Text);
              
                var registro = Horario.buscarHorario(cedulaP);
                foreach (var campo in registro)
                {
                    txtDisponibilidad.Text = ""+campo.IdDisponibilidad;
                    txtHfin.Text = ""+campo.HoraFinCorte;
                    txtHinicio.Text = ""+campo.HorainicioCorte;
                    txtidHorario.Text = "" + campo.idHorario;

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
            var misdatos = from registros in Horario.DisponibilidadH select registros;
            e.Arguments.TotalRowCount = misdatos.Count();
            e.Result = misdatos;
        }
    }
}