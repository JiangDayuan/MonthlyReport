using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MonthlyReport.Services
{
    public class JsonDataService
    {
        public static string DataToJson(object data)
        {
            try
            {
                if (data is null)
                {
                    throw new Exception("没有保存的内容");
                }
                return JsonConvert.SerializeObject(data);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void WriteFile(string info, string fileName)
        {
            try
            {
                using (StreamWriter sw = new StreamWriter(fileName, false))
                {
                    sw.Write(info);
                    sw.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static string ReadFile(string fileName)
        {
            try
            {
                string info = string.Empty;
                using (StreamReader sr = new StreamReader(fileName))
                {
                    info = sr.ReadToEnd();
                    sr.Close();
                }
                return info;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static T FromJson<T>(string Input)
        {
            try
            {
                return JsonConvert.DeserializeObject<T>(Input);
            }
            catch (Exception)
            {
                return default;
            }
        }
    }
}
