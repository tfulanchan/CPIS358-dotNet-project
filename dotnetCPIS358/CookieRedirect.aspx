<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CookieRedirect.aspx.cs" Inherits="dotnetCPIS358.CookieRedirect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <script>
        var myVar = setInterval(myTimer, 0);
        function myTimer() {
            var date = new Date();
            var month = new Array(12);
            month[0] = "1";
            month[1] = "2";
            month[2] = "3";
            month[3] = "4";
            month[4] = "5";
            month[5] = "6";
            month[6] = "7";
            month[7] = "8";
            month[8] = "9";
            month[9] = "10";
            month[10] = "11";
            month[11] = "12";
            document.getElementById("year").innerHTML = date.getFullYear();
            document.getElementById("month").innerHTML = month[date.getMonth()];
            document.getElementById("day").innerHTML = date.getDate();
            document.getElementById("hours").innerHTML = date.getHours();
            document.getElementById("minutes").innerHTML = date.getMinutes();
            document.getElementById("seconds").innerHTML = date.getSeconds(); document.getElementById("milliseconds").innerHTML = date.getMilliseconds();
        }
    </script>
    <br />
    <h6>CookieRedirect</h6>
    <p>cookie.Expires = DateTime.Now.AddSeconds(10);</p>
    <br />
    <div class="timer">
        <div class="pill">
            <div id="year" class="date"></div>
            <div class="label">Year</div>
        </div>
        <div class="pill">
            <div id="month" class="date"></div>
            <div class="label">Month</div>
        </div>
        <div class="pill">
            <div id="day" class="date"></div>
            <div class="label">Day</div>
        </div>
        <div class="pill">
            <div id="hours" class="date"></div>
            <div class="label">Hours</div>
        </div>
        <div class="pill">
            <div id="minutes" class="date"></div>
            <div class="label">Minutes</div>
        </div>
        <div class="pill">
            <div id="seconds" class="date"></div>
            <div class="label">Seconds</div>
        </div>
        <div class="pill">
            <div id="milliseconds" class="date"></div>
            <div class="label">Milliseconds</div>
        </div>
    </div>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Lalezar&display=swap');

        body {
            text-align: center;
            font-family: sans-serif;
        }

        .title {
            color: #fff;
            font-size: 2.5em;
            text-shadow: 0px 15px 30px rgba( 0, 0, 0, 1 );
            font-family: 'Lalezar';
        }

        .timer {
            display: flex;
            justify-content: center;
        }

        .date {
            font-size: 3em;
            font-family: 'Lalezar';
        }

        .label {
            color: #fff;
        }

        .pill {
            background: #000;
            color: #fff;
            border-top: 5px solid #fff;
            padding: 10px 15px;
            margin: 10px 5px;
            transition: .3s ease-out;
            border-radius: 5px;
            box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.5 );
        }

            .pill:hover {
                color: #ffdd40;
                margin-top: -5px;
                border-top: 5px solid #ffdd40;
            }

                .pill:hover .label {
                    color: #ffdd40;
                    transition: .3s;
                }

        #ItemNumber #ItemName {
            background: #000;
            color: #fff;
            border-top: 5px solid #fff;
            padding: 10px 15px;
            margin: 10px 5px;
            border-radius: 5px;
            box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.5 );
        }
    </style>

    <br />
    <br />
    <p>Below shows values from Cookie.aspx stored by cookie</p>
    <div>
        <p>Item Number: </p>
        <asp:Label ID="ItemNumber" runat="server" BackColor="Yellow"></asp:Label>
        <br />
        <br />
        <p>Item Name: </p>
        <asp:Label ID="ItemName" runat="server" BackColor="Yellow"></asp:Label>
        <br />
        <br />

    </div>
    <br />
</asp:Content>
