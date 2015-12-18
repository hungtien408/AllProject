using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using TLLib;
using System.IO;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    private static string str = "#EC0000";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Label1.Text = NextId(str, 4, 1);
        str = Label1.Text;

        string path = Server.MapPath("~/assets/links.xml");

        if (File.Exists(path))
        {
            XmlDocument document = new XmlDocument();
            document.Load(path);
            string xpath = "name";
            XmlNode name = document.GetElementsByTagName(xpath)[0]; // Lấy ra Node con "name" đầu tiên.
            name.InnerText = Label1.Text;
            document.Save(path);

            //XmlDocument doc = new XmlDocument();
            //doc.Load("D:\\build.xml");
            //XmlNode root = doc.DocumentElement;
            //XmlNode myNode = root.SelectSingleNode("descendant::books");
            //myNode.Value = "blabla";
            //doc.Save("D:\\build.xml");

            //XmlNodeList nameList = document.SelectNodes(xpath); // Lấy ra tất cả các Node con "name" hiện có.
            //foreach (XmlNode bl in nameList) // Truy xuất tất cả các Node con trong nameList
            //{
            //    if (bl.InnerXml == "name") bl.InnerText = Label1.Text; // Thay đổi nội dung Node con có nội dung là "Yagami Raito" thành "Yagami"
            //    //Console.WriteLine(bl.InnerText);
            //}
        }
        else
        {
            
        }



        string contentXML = "<item>" +
        "</item>"; // Tạo một nội dung XMl
        XmlDocument docXML = new XmlDocument(); // Tạo đối tượng XmlDocument
        docXML.LoadXml(contentXML); // Load nội dung contentXML
        //string xpath = "name"; // Đường dẫn của Node con "name"
        XmlNode node = docXML.CreateNode(XmlNodeType.Element, "name", null); // Tạo một node mới bằng phương thức CreateNode
        node.InnerText = Label1.Text; // Gán nội dung cho Node con mới tạo
        docXML.SelectSingleNode("item").AppendChild(node); // Thêm Node con mới tạo vào Node cha "item"

        XmlTextWriter writer = new XmlTextWriter("data.xml", null); // Tạo đối tượng XmlTextWriter để lưu nội dung XML vào file "data.xml"
        writer.Formatting = Formatting.Indented;
        docXML.Save(writer); // Lưu nội dung docXML vào file "data.xml"
        //Console.ReadKey();
        //Process.Start("notepad.exe", "data.xml"); // Khởi tạo tiến trình để Edit tập tin "data.xml"

        File.WriteAllText(Server.MapPath("~/assets/links.xml"), docXML.InnerXml);

    }

    public static string NextId(string _str, int _prefixed, int _step)
    {
        string str = _str.Substring(_prefixed);
        long tam = long.Parse(str) + _step;
        string strlenght = "";

        for (int i = 0; i < _str.Length - _prefixed; i++)
            strlenght += "0";

        string res = _str.Substring(0, _prefixed) + tam.ToString(strlenght);

        return res;
    }
}