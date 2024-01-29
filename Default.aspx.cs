using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;

namespace AJAX
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class Mobile
        {
            public string ModelName { get; set; }
            public decimal Price { get; set; }
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static List<Mobile> GetMobileList()
        {
            var mobileList = new List<Mobile>()
            {
                new Mobile{ModelName= "Iphone12", Price = 600},
                new Mobile{ModelName= "Iphone12Pro", Price = 700},
                new Mobile{ModelName= "Iphone13", Price = 800},
                new Mobile{ModelName= "Iphone13Pro", Price = 900},
                new Mobile{ModelName= "Iphone12", Price = 1000},
            };
        return mobileList;
        }
        [WebMethod] // POST
        public static string SayHello(string name)
        {
            return "Hello " + name;
        }
    }
    
}
