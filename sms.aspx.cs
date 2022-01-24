using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;
using System.Net;
using System.IO;

namespace SignalTextApp
{
    public partial class sms : System.Web.UI.Page
    {
       
       // const String SmsText = "Enjoy Your weekend, Team!";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendSms_Click(object sender, EventArgs e)
        {

            string SmsText = string.Empty;
            string MobileNo = string.Empty;

            SendSms(SmsText, MobileNo);
            
        }

        private void SendSms(string smsText, string mobileNo)
        {
            smsText = "Enjoy your weekend team!, from : TK";           
            mobileNo = ddlContacts.SelectedValue;

            ///SMS GATEWAY PROVIDER PATH
            ///
            // api key = w2Xms6e7Rm6MAPLITTKOnQ ==
            // api id = 5f2408f860954faaadf94df7dc44e388

            // string url = "http://XXXXProvider.com?phoneNumber={0}&MsgTxt={1}";

             string url = "https://platform.clickatell.com/messages/http/send?apiKey=w2Xms6e7Rm6MAPLITTKOnQ==&to=+27734796220&content=Enjoy+your+weekend+team!,+from+:+TK";


           // string url = "https://platform.clickatell.com/messages/http/send?apiKey=w2Xms6e7Rm6MAPLITTKOnQ==&to=ddlContacts.SelectedValue&content=Enjoy+your+weekend+team!,+from+:+TK";


            string url1 = String.Format(url, mobileNo, smsText);

            //create Web Request object for the url
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url1);

            // get the response from the web request
            HttpWebResponse res = (HttpWebResponse)req.GetResponse();

            // read the response from the WebResponse in to a stram
            Stream s = res.GetResponseStream();
            StreamReader rdr = new StreamReader(s);
            string result = rdr.ReadLine();
            lblStatus.Text = "Sms has been sent.";
            s.Flush();
            s.Close();
        }
    }
}