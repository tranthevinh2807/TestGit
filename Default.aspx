<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AJAX._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <br />
    <button type="button" id="SayHello">Say Hello</button>
    ​
    <br />
    <br />
    <br />
    <button type="button" id="GetMobileList">learn more</button>
    ​
    <br />
    <br />
    <br />
    <button type="button" id="UpdateMobilePrice">Update Mobile Price</button>
    ​
    <br />
    <br />
    <br />
    <table class="tblMobileList table">
        <thead>
            <tr>
                <th>
                    <b>Name</b>
                </th>
                <th>
                    <b>Price</b>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><span class="name"></span></td>
                <td><span class="price"></span></td>
            </tr>
        </tbody>
    </table>
    ​
​
    <script type="text/javascript">
       
        $("#SayHello").click(function () {
            $.ajax({
                type: "POST", //POST
                url: "Default.aspx/SayHello",
                data: "{name: 'Vinh'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    alert(msg.d);
                },
                failure: function (response) {
                    alert(response.d);
                },
                error: function (response) {
                    alert(response.d);
                }
            });
        });
       
        $("#GetMobileList").click(function () {
            $.ajax({
                type: "GET", //GET
                url: "Default.aspx/GetMobileList",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    DrawTable(msg.d);
                },
                failure: function (response) {
                    alert(response.d);
                },
                error: function (response) {
                    alert(response.d);
                }
            });
        });

        function DrawTable(mobiles) {
            $.each(mobiles, function (i, item) {
                var $tr = $('<tr>').append(

                    $('<td>').text(item.ModelName),
                    $('<td>').text(item.Price),
                ).appendTo('.tblMobileList')
            });
        }

    </script>
</asp:Content>
