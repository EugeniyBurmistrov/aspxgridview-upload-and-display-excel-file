﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v19.2, Version=19.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
        function OnFileUploadComplete(s, e) {
            Grid.PerformCallback();
        }
    </script>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxUploadControl ID="Upload" runat="server" ShowUploadButton="True" OnFileUploadComplete="Upload_FileUploadComplete">
                <ValidationSettings AllowedFileExtensions=".xls,.xlsx">
                </ValidationSettings>
                <ClientSideEvents FileUploadComplete="OnFileUploadComplete" />
            </dx:ASPxUploadControl>
            <dx:ASPxGridView ID="Grid" ClientInstanceName="Grid" runat="server" OnInit="Grid_Init"></dx:ASPxGridView>
        </div>
    </form>
</body>
</html>
