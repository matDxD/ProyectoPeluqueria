using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPeluqueria
{
    public partial class Citas : System.Web.UI.Page
    {
        ModeloCorteDataContext basededatos = new ModeloCorteDataContext();
        ModeloCDataContext basescdatos = new ModeloCDataContext();
        ModeloHorarioDataContext horario = new ModeloHorarioDataContext();
        ModeloCiDataContext citas = new ModeloCiDataContext();
        ModeloPDataContext peluquero = new ModeloPDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnConfirmar.Visible = false;
            lblCedula.Visible = false;
            txtcedula.Visible = false;
            btnCedula.Visible = false;
            lblcliente.Visible = false;
            listaPeluquero.Visible = false;
            btnPeluqero.Visible = false;
            btnHorario.Visible = false;
            btnCancelarH.Visible = false;
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            int cuentaregistros = 0;
            if (ListaCortes.SelectedItem != null)
            {
                string seleccion = ListaCortes.SelectedItem.Text;
                int idcorte = int.Parse(ListaCortes.SelectedItem.Value);
               
               
                var registro = basededatos.buscarCorte(idcorte);
                foreach (var campo in registro)
                {
                    txtresultado.Text = "Seleccionaste "+campo.Nombre+"\n"+ "\nEl valor es de: "+campo.precio+ "\n"+"\nLa descripcion: "+campo.Descripcion;
                 

                    cuentaregistros = 1;
                }
                if (cuentaregistros == 0)
                {
                    Response.Write("<scrtipt alert('Nit no Existe...!!!') </script>");
                   
                }
                btnConfirmar.Visible= true;
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
          //  txtresultado.Visible= false;
            txtcedula.Visible= true;
            lblCedula.Visible= true;
            btnCedula.Visible = true;
        }

        protected void btnCedula_Click(object sender, EventArgs e)
        {
            //agregar un if, si ya tiene una cita para que muestre la cita y si quiere cancelarla 
            try
            {
                int cedulac = int.Parse(txtcedula.Text);
                int cuentaregistros = 0;
                var registro = basescdatos.buscarClientes(cedulac);
                foreach (var campo in registro)
                {
                    lblcliente.Visible= true;
                    lblcliente.Text = campo.nombre+"! tu cita sera agendada, seleccione su peluquero de preferencia";
                
                    listaPeluquero.Visible= true;
                    btnPeluqero.Visible= true;
                    cuentaregistros = 1;

                }
                if (cuentaregistros == 0)
                {
                    Response.Write("<scrtipt alert('Nit no Existe...!!!') </script>");
                    lblcliente.Visible= true;
                    lblcliente.Text = "Esta cedula no existe, cree una cuenta para poder continuar";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
        }

        protected void btnPeluqero_Click(object sender, EventArgs e)
        {
            try
            {
                ListaHorario.Visible= true;
                lblcliente.Visible = true;
                int cuentaregistros = 0;
                string nombrep = listaPeluquero.SelectedItem.Text;
                int peluqueroC = int.Parse(listaPeluquero.SelectedItem.Value);
                lblcliente.Text = "Los horarios disponibles de " + nombrep + " son:";
                var registro= horario.buscarHorario(peluqueroC);
                foreach (var campo in registro)
                {

                    string horas = ""+ campo.HorainicioCorte; 
                    string[] horasArray = horas.Split(' '); 
                    string dispo = campo.estado;
                    int idDisponibilidad = campo.IdDisponibilidad;
                    btnHorario.Visible = true;
                    btnCancelarH.Visible = true;
                 ListaHorario.Items.Clear();
                    if (string.IsNullOrEmpty(dispo))
                    {
                        foreach (string hora in horasArray)
                        {
                            ListItem item = new ListItem(hora, hora);
                            ListaHorario.Items.Add(item);
                           
                        }
                    }
                    cuentaregistros = 1;

                }
                if (cuentaregistros == 0)
                {
                    Response.Write("<scrtipt alert('Nit no Existe...!!!') </script>");
                    lblcliente.Visible = true;
                    lblcliente.Text = "Esta cedula no existe, cree una cuenta para poder continuar";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
        }

        protected void btnHorario_Click(object sender, EventArgs e)
        {

            int idCita= UltimoId();
            string cedulaC = txtcedula.Text;
            string CedulaP = listaPeluquero.SelectedItem.Value;
            string Dispon = ""+IdDispo();
            string idcort =ListaCortes.SelectedItem.Value;
            citas.insertarCitas(idCita,cedulaC,CedulaP,Dispon,idcort);
            horario.actualizarEstado("ocupado",IdDispo());
            peluquero.actualizarNcorte(cedulaP, +1);
            lblaux.Text ="Cita Agendada con exito";
           
        
        }

        public int IdDispo()
        {
            int idDisponibilidad = 0;
            try
            {
               
            
                string nombrep = listaPeluquero.SelectedItem.Text;
                int peluqueroC = int.Parse(listaPeluquero.SelectedItem.Value);
           
                var registro = horario.buscarHorario(peluqueroC);
                foreach (var campo in registro)
                {

          
                     idDisponibilidad = campo.IdDisponibilidad;
                 //   campo.estado= "ocupado";
                    lblaux.Text = "Entro y es :" +campo.estado;
                }
          
            }
            catch (Exception ex)
            {
                Response.Write("<scrtipt>alert('error en la informacion...!!!'); </script>");
            }
            return idDisponibilidad + 1;
        }

        public int UltimoId()
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Universidad Distrital\Programacion Web\ProyectoPeluqueria\proyectof\ProyectoPeluqueria\ProyectoPeluqueria\App_Data\BDpeluqueria.mdf;Integrated Security=True;Connect Timeout=30";

            int cedulac = int.Parse(txtcedula.Text);
            int ultimoIdCita = 0;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand command = new SqlCommand("SELECT TOP 1 IdCita FROM Citas ORDER BY IdCita DESC", connection);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    ultimoIdCita = Convert.ToInt32(reader["IdCita"]);
                }

                reader.Close();
            }

            lblaux.Text = ultimoIdCita.ToString();

            return ultimoIdCita+1;
        }

        protected void btnCancelarH_Click(object sender, EventArgs e)
        {
            btnCedula_Click(sender, e);
            ListaHorario.Visible = false;
        }
    }
}