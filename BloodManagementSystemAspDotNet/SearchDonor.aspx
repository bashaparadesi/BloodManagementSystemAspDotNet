<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDonor.aspx.cs" Inherits="BloodManagementSystemAspDotNet.SearchDonor" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Donor - Blood Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">🩸 Blood Management</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="AddDonor.aspx">Add Donor</a></li>
                    <li class="nav-item"><a class="nav-link" href="DonorList.aspx">Donor List</a></li>
                    <li class="nav-item"><a class="nav-link" href="SearchDonor.aspx">Search Donor</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server" class="container mt-5">
        <div class="card shadow-lg p-4">
            <h2 class="text-center text-danger mb-4">🔍 Search Donor by Blood Group</h2>
            <div class="row mb-3 text-center">
                <div class="col-md-6 offset-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select mb-2">
                        <asp:ListItem>A+</asp:ListItem><asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem><asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem><asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem><asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-danger w-100" OnClick="btnSearch_Click" />
                </div>
            </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"
                CssClass="table table-bordered table-hover text-center">
                <HeaderStyle CssClass="table-danger" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
