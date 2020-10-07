using MonthlyReport.Models;
using Spire.Pdf;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MonthlyReport.Services
{
    public class DiDiDataService
    {
        public List<string> fileList { get; set; }

        public DiDiLine SingleTravel { get; set; }

        public DiDiDataService(string filePath)
        {
            Spire.License.LicenseProvider.SetLicenseKey("dQEAPvKIXof5vBN8QrP3RSc6+J/Jkto1FL2FDTMHm2a4Zs2u3jH6cuR5/gtXgK+r+G1L/lwjNrj2qPd7sOPJ/C82TCxwa5AhO8q/5Ztt3FiBBopJ4whHxKXMNNVKtPVUxg7ZoBh5bK06fZgjMIaCnpfk9zJVmsJyTGZOerr2zvmw2yxeW2KTzzWZZp/fPG57GNeBFgHNn7vSgl49vdZChjOFupL5IEldKJbD6e993q//XXdIFXlrZV8UZUSmA3Gih1aB87aOJit6PKWiiimnEdAIvi1kB5J9+Tnd48Y3zCEZoB6Ap0MDWoUSbzmluXc/WXFDZ91sy5yVjHkovCGpuDuX9tlDkaazeDVezWLyFgixFWjJn4RfxSKQbaffIXEMyHmUnROt4BCDJGJ3dIXtqv+1Msulwhb1/AobMIsGrqCr6rPrwAP1x59MYDiC2d/jpr2+X7bjF+vbh7fwx9KTTCIlmrUrnoaCXIaVHtvZsiuO+bW/Mt8PEjdtnGkVmcHvUHJK6Z3bWvZ9cVxOcWB2mRM0DtUQnei1MukGLxh7Jy59DetyBBuGH4eySS4xdfM/Cm7TzR5Dalv8P0HdIQuu47awm7LmhyXDRBLOIaLzw+NpaGmpFRHI098Az+NiPv0lcO+yZn4o75/7W/0oFs+ONR/JobN9xTkJmRp5XxwV5cJFAEz4dQYcCyA6JKn2Xeb9Nr2ZpzpQiUWzgeqHf6lz8lk3K07R88L/D3KkZf9tpRTaNIjNGOyTs/fPa51hyafhBeSSVyy/oPDv1vpHyD1BGlAJwHzX5SuFcvv5KNO/HBLU0iN7lFLAnmLaX8QlKoTAbEh5Hd64nWvcFLWpaKZzVLLPlZ7IWDN2LhpA5qsUb23BkmBeAbjOS/s7xSHySwojpdb9qghZAuJ7f5jQagpTE0rR4MLBEuZNbHs4RFEWQIL0gbyenbLlZ4kMzy0NNozqEKySXqcT2UvJ1ismLG+KsRoHC5qJ8FKryAbBQ85KmRvVr3JiysxaKvpQ4DeMiBaOZw+oNw3ald279XYsTC4uSCXzjsYwfuuFkzfLSSXrXJfajrIW/L5XyS09Cys1D4MMooO2kUhWGkm4rmrVG7sjcwQ5M4SciWBHGwxCltPIqjwHHInHbVC/iwDluvZH/K8GpAfI7ByjqgvGz1jJZIVhcI1V4uMNFuOpPN9NY0rNdoMlCEffp9RtcpK8PUoT7MNIvGXGVjU4BGj9lkTXV+kq0jIzigzF+pTHbW5vmB7pVGfRmfyYkatYnIYZnim2KqsI0hCQuSwYbPCUUgyqN3bwK/vgh/Ne5kSe6Lfv3YYZvOoLNcWmKTUokXDdGTmLkuYk3vnYswMmfaQStpnZKoduPMIB9991Rq5P3e/EH+T//5U8+QTTAwxDgBL1W1a80FKKK/jMlCoI9gtWSyfJVdzY59tZ97GreJld3uWDX5WJbfu5edbVRskGyYrDlxaS9AxpPgcNpMyRW/S5Lfzk4o49PTev5WiQ3bDeir5BM/XXGMSO8iJYhFZVRTvUXgtCryAaotKTeVZimFq2+QCrBJPdMYPLyi9Gw+X5");

            fileList = new List<string>();
            fileList = filePath.Split(';').ToList<string>();
        }

        public Task<ObservableCollection<DiDiLine>> ConvertPDF2TXT()
        {
            try
            {
                Task<ObservableCollection<DiDiLine>> task = Task.Run(() =>
                {
                    ObservableCollection<DiDiLine> travelList = new ObservableCollection<DiDiLine>();
                    string didiContent = "";

                    // 读取PDF中的信息
                    foreach (string file in fileList)
                    {
                        if (File.Exists(file))
                        {
                            // 读取PDF
                            Spire.Pdf.PdfDocument document = new Spire.Pdf.PdfDocument();
                            document.LoadFromFile(file);
                            // 逐页解析
                            StringBuilder content = new StringBuilder();
                            foreach (PdfPageBase page in document.Pages)
                            {
                                content.Append(page.ExtractText());
                            }
                            didiContent += content.ToString() + "\r\n";
                        }
                        else
                        {
                            throw new Exception("选择文件不存在！");
                        }
                    }

                    List<string> contentList = Regex.Split(didiContent, "\r\n", RegexOptions.IgnoreCase).ToList<string>();

                    int lineIndex = 0;
                    foreach (string travel in contentList)
                    {
                        if (travel.Contains("快车"))
                        {
                            SingleTravel = new DiDiLine();
                            string leftLine = GetDateTime(travel, "快车");
                            string getEnd = GetStartPoint(leftLine);
                            string getMiles = GetEndPoint(getEnd);
                            GetOther(getMiles);

                            travelList.Add(SingleTravel);
                        }
                        else if (travel.Contains("专车"))
                        {
                            SingleTravel = new DiDiLine();
                            string leftLine = GetDateTime(travel, "专车");
                            string getEnd = GetStartPoint(leftLine);
                            string getMiles = GetEndPoint(getEnd);
                            GetOther(getMiles);

                            travelList.Add(SingleTravel);
                        }
                        else if (travel.Contains("滴滴") && !travel.Contains("行程单"))
                        {
                            SingleTravel = new DiDiLine();
                            string leftLine = GetDateTime(contentList[lineIndex + 1]);
                            string getEnd = GetStartPoint(leftLine);
                            string getMiles = GetEndPoint(getEnd);
                            GetOther(getMiles);

                            travelList.Add(SingleTravel);
                        }

                        lineIndex++;
                    }

                    return travelList;
                });
                return task;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string GetDateTime(string line, string splitpatten)
        {
            Dictionary<string, string> WeekDict = new Dictionary<string, string>();
            WeekDict["Monday"] = "周一";
            WeekDict["Tuesday"] = "周二";
            WeekDict["Wednesday"] = "周三";
            WeekDict["Thursday"] = "周四";
            WeekDict["Friday"] = "周五";
            WeekDict["Saturday"] = "周六";
            WeekDict["Sunday"] = "周日";
            try
            {
                // 获取日期
                string secondPart = Regex.Split(line, splitpatten, RegexOptions.IgnoreCase)[1].Trim();
                string dateTime = Regex.Split(secondPart, "周", RegexOptions.IgnoreCase)[0].Trim();
                DateTime dt = DateTime.ParseExact(dateTime, "MM-dd HH:mm", System.Globalization.CultureInfo.CurrentCulture);
                SingleTravel.Datetime = dt;
                // 获取星期
                SingleTravel.Weekday = WeekDict[dt.DayOfWeek.ToString()];
                string returnStr = "";
                int strCount = 0;
                foreach (string s in Regex.Split(secondPart, "周", RegexOptions.IgnoreCase))
                {
                    if (strCount >= 1)
                    {
                        returnStr += s;
                    }
                    strCount++;
                }
                return returnStr.Trim();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string GetDateTime(string line)
        {
            Dictionary<string, string> WeekDict = new Dictionary<string, string>();
            WeekDict["Monday"] = "周一";
            WeekDict["Tuesday"] = "周二";
            WeekDict["Wednesday"] = "周三";
            WeekDict["Thursday"] = "周四";
            WeekDict["Friday"] = "周五";
            WeekDict["Saturday"] = "周六";
            WeekDict["Sunday"] = "周日";
            try
            {
                // 获取日期
                int i;
                string pureLine = line.TrimStart();
                for (i = 0; i < pureLine.Length; i++)
                {
                    if (pureLine[i] == ' ')
                    {
                        break;
                    }
                }
                string secondPart = pureLine.Substring(i).Trim();
                string dateTime = Regex.Split(secondPart, "周", RegexOptions.IgnoreCase)[0].Trim();
                DateTime dt = DateTime.ParseExact(dateTime, "MM-dd HH:mm", System.Globalization.CultureInfo.CurrentCulture);
                SingleTravel.Datetime = dt;
                // 获取星期
                SingleTravel.Weekday = WeekDict[dt.DayOfWeek.ToString()];
                string returnStr = "";
                int strCount = 0;
                foreach (string s in Regex.Split(secondPart, "周", RegexOptions.IgnoreCase))
                {
                    if (strCount >= 1)
                    {
                        returnStr += s;
                    }
                    strCount++;
                }
                return returnStr.Trim();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string GetStartPoint(string line)
        {
            try
            {
                int totalLength = line.Count();
                int breakPoint = 0;
                string startPoint = "";
                for (int i = 0; i < totalLength; i++)
                {
                    if (line[i] == '市' || line[i] == '县' || line[i] == '州' || line[i] == '县')
                    {
                        breakPoint = i + 1;
                        break;
                    }
                    else
                    {
                        continue;
                    }
                }
                string newLine = line.Substring(breakPoint, totalLength - breakPoint).Trim();
                for (int j = 0; j < newLine.Length; j++)
                {
                    if (newLine[j] == ' ')
                    {
                        break;
                    }
                    else if (newLine[j] == '.')
                    {
                        for (int n = 1; n < 5; n++)
                        {
                            int k = -1;
                            if (int.TryParse(newLine[j - n].ToString(), out k))
                            {
                                continue;
                            }
                            else
                            {
                                startPoint = startPoint.Substring(0, startPoint.Length - n + 1);
                                //endPoint = "";
                                //miles = double.Parse(newLine.Substring(startPoint.Length - n + 2, n+1));
                                goto a;
                            }
                        }
                    }
                    else
                    {
                        startPoint += newLine[j];
                    }
                }
            a:;
                SingleTravel.StartPoint = startPoint;
                return newLine.Substring(startPoint.Length).Trim();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string GetEndPoint(string line)
        {
            try
            {
                int k = -1;
                string endPoint = "";
                for (int j = 0; j < line.Length; j++)
                {
                    if (line[j] == ' ')
                    {
                        break;
                    }
                    else if (line[j] == '.')
                    {
                        if (!int.TryParse(endPoint, out k))
                        {
                            for (int n = 1; n < 5; n++)
                            {
                                if (int.TryParse(line[j - n].ToString(), out k))
                                {
                                    continue;
                                }
                                else
                                {
                                    endPoint = endPoint.Substring(0, endPoint.Length - n + 1);
                                    goto a;
                                }
                            }
                        }
                        else
                        {
                            endPoint = "";
                            goto a;
                        }
                    }
                    else
                    {
                        endPoint += line[j];
                    }
                }
            a:;
                SingleTravel.EndPoint = endPoint/* + " + " + line.Substring(endPoint.Length).Trim()*/;
                return line.Substring(endPoint.Length).Trim();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void GetOther(string line)
        {
            try
            {
                string miles = "";
                //int k = 0;
                for (int j = 0; j < line.Length; j++)
                {
                    if (line[j] == '.')
                    {
                        miles = line.Substring(0, j + 2);
                        break;
                    }
                }
                SingleTravel.Miles = double.Parse(miles);
                if (line.Substring(miles.Length).Trim().Contains(' '))
                {
                    SingleTravel.Fee = double.Parse(line.Substring(miles.Length + 1).Trim());
                }
                else
                {
                    SingleTravel.Fee = double.Parse(line.Substring(miles.Length).Trim());
                }
            }
            catch
            {
                throw new Exception(String.Format(line));
            }
        }
    }
}
