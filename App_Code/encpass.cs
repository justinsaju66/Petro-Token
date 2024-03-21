using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for encpass
/// </summary>
public class encpass
{
    public encpass()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    #region  encryption
    public string EncryptConnectionString(string password)
    {
        try
        {

            Byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(password);

            string encryptedConnectionString = Convert.ToBase64String(b);

            return encryptedConnectionString;
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
            return "0";
        }

    }
    #endregion





    #region Dcryption
    public string DecryptConnectionString(string password)
    {
        try
        {

            Byte[] b = Convert.FromBase64String(password);

            string decryptedConnectionString = System.Text.ASCIIEncoding.ASCII.GetString(b);

            return decryptedConnectionString;
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
            return "0";
        }

    }
    #endregion
}
