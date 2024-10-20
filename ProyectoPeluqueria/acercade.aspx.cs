using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPeluqueria
{
    public partial class acercade : System.Web.UI.Page
    {
        public ModeloCDataContext basesdedatos = new ModeloCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        
        }
    

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            var misdatos = from registros in basesdedatos.cliente select registros;
            e.Arguments.TotalRowCount = misdatos.Count();
            e.Result = misdatos;
        }
    }
}