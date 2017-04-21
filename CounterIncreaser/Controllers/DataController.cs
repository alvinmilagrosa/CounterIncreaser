using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CounterIncreaser.Controllers
{
    public class DataController : Controller
    {
        [HttpPost]
        public JsonResult AddToCounterInformation(int currentNumber, int numberAfterAdded, string status)
        {
            var result = 0;
            string message = "";

            using (CounterIncreaserDBEntities ct = new CounterIncreaserDBEntities())
            {
                var parameters = new SqlParameter[]
                {
                        new SqlParameter("@CurrentNumber", currentNumber),
                        new SqlParameter("@NumberAfterAdded", numberAfterAdded),
                         new SqlParameter("@Status", status)
                };

                result = ct.Database.ExecuteSqlCommand("spIncrementLog @CurrentNumber,@NumberAfterAdded,@Status", parameters);
                if (result > 0)
                {
                    message = "Success";
                }
                else
                {
                    message = "error";
                }
            }
            return new JsonResult { Data = message, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}
