<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Equipment.aspx.vb" Inherits="EqSalvaged.Equipment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css' />

    <style>
        body {
            /*  background-image: url("https://img.freepik.com/free-vector/map-point-abstract-3d-polygonal-wireframe-airplane-blue-night-sky-with-dots-stars-illustration-background_587448-568.jpg");*/

            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            border:2px;
            border-color:black;
            max-width: 980px;
            margin: auto;
           padding:4px;
            text-align: left;
        }

        .forms > td {
            border: none
        }
          .user-box {
                position: relative;
            }
            .user-box input {
                width: 100%;
                padding: 10px 0;
                font-size: 20px;
                color: #000;
                border: none;
                border-bottom: 1px solid #000;
                outline: none;
                background: transparent;
                margin-left: 20px;
            }
            .user-box label {
                position: absolute;
                top:0;
                left: 0;
                padding: 10px 0;
                font-size: 20px;
                color: #000;
                pointer-events: none;
                transition: .5s;
                margin-left: 20px;
            }
            .user-box input:first-child ~ label,
            .user-box input:valid ~ label {
                top: -20px;
                left: 0;
                color: rgb(6,52,101);
                font-size: 20px;
            }


        #form1 {
            /* background: rgb(167, 208, 22, 0.5);*/
            background: #FDBE11;
            border:thick;
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0, 0, 0, .3);
            border-radius: 10px;
        }

        .titles {
            font: Calibri;
            font-size: xx-large;
            /*color: #91c2c5;*/
            color: black;
            font-weight:bold;
        }
        .lbl2 {
            font: Calibri;
            font-size: 18px;
            color: blue;
            font-weight: bold;
        }
            .lbl3
        {
            font: Calibri;
            font-size: 14px;
            color: black;
            font-weight: bold;
        }
           .auto-style3 {
            font-size: 12px;
            color: black;
            text-align: left;
            font:bold;
            padding-top:30px
        }
        .auto-style1 {
            padding-top:0px;
            margin-bottom: 1px;
        }
        

        .auto-style6 {
            font-size: 16px;
            color: black;
            text-align: left;
            margin-left: 10px;
            font:bold;

         
        }
        
       

        .lbl4 {
            font: Calibri;
            font-size: 14px;
            color: black;
            font-weight:bold;
        }

        .lbl5{
            image-orientation:unset;

        }
        
        .auto-style3 {
            font-size: 12px;
            color: black;
            text-align: left;
            font:bold;
            padding:inherit;
        }

       

        .auto-style6 {
            font-size: 16px;
            color: black;
            text-align: left;
            margin-left: 10px;
            font:bold;

         
        }
        




        .auto-style8 {
            text-align: left;
        }

          .shadowbutton {
                background-color: #003366;
                border: none;
                color: #d7d6d6;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 4px 2px;
                cursor: pointer;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                border-radius: 10px;
                box-shadow: 10px 5px 5px grey;

            }

            .shadowbutton:hover {
                box-shadow: 12px 7px 8px grey;
            }
                        
        .shadowbutton1 {
                background-color: white;
                border: none;
                color:  black;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                margin: 4px 2px;
                cursor: pointer;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                border-radius: 10px;
                box-shadow: 10px 5px 5px gold;

            }

            .shadowbutton1:hover {
                box-shadow: 12px 7px 8px gold;
            }

            .bottom{

                margin-top:5rem;


            }
            .gridview {
                max-height:300px;
                overflow:auto;
                margin:20px;
                text-align:center;
            }

        </style>


     

    </head>


<body >
  
    <div class="auto-style8">
&nbsp;<label class="titles" runat="server"  ><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Equipment to be Salvaged</strong></label>
    <br />
    <br />
   
    </div>
 <form id="form1" runat="server"  >
           
           <asp:Table runat="server" width="100%"  height="415px" CssClass="auto-style1"  >
                <asp:TableRow>
                    <asp:TableCell>
                        <p runat="server" class="auto-style3">
                           <strong>&nbsp;&nbsp;TIP:</strong><strong>&nbsp;&nbsp;If you enter multiple Equipment to be Salvaged, on the last one you enter do not press+.When you press the Submit button it will get all</strong>
                            the<br />
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ones below,plus one you just enterred.</strong></p>
                         <p runat="server" class="auto-style6"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;************Please remove the Inventory Number, cut the cord if there is one, and dispose of the equipment************</strong></p>
                         <p runat="server" class="auto-style6"> <strong>To: Marsha Mallette </strong></p>
                         <p runat="server" class="auto-style6"><strong> Date:&nbsp;3/11/2024 </strong></p>
                         <p runat="server" class="auto-style6"><strong>The follow items are old, broken, and worn beyond repair or have out-lived its usufullness and/or life-cycle and shoud be salvaged.</strong></p>
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow CssClass="forms" >
                  <asp:TableCell ColumnSpan ="6">
                      <asp:Table runat="server" >
                <asp:TableRow>
                 <asp:TableCell CssClass="user-box" Width="118px">
                          <asp:TextBox ID="InNumber" runat="server" Font-Names="" required=""></asp:TextBox>
                              &nbsp;&nbsp;<label>Inv Number</label>
                          </asp:TableCell>
                    <asp:TableCell CssClass="user-box" Width="180px">
                          <asp:TextBox ID="txtdescrption" runat="server" Font-Names="" required=""></asp:TextBox>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Description</label>
                          </asp:TableCell>
                    <asp:TableCell CssClass="user-box" Width="118">
                        <asp:TextBox ID="txtMfg" runat="server" Font-Names="" required=""></asp:TextBox>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Mfg.</label>
                       </asp:TableCell>
                    <asp:TableCell CssClass="user-box" Width="180">
                        <asp:TextBox ID="txtSeralNumber" runat="server" Font-Names="" required=""></asp:TextBox>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Seral Number</label>
                       </asp:TableCell>
                    <asp:TableCell CssClass="user-box" Width="110">
                        <asp:TextBox ID="txtCode" runat="server" Font-Names="" required=""></asp:TextBox>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Loc.Code</label>
                       </asp:TableCell>
                    <%-- <asp:TableCell CssClass="lbl5" Width="40">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/plus.png" Font-Names="" required="" />
                                           
                     </asp:TableCell>--%>
                     <asp:TableCell>
                           &nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Button ID="CrossButton" runat="server" Text="+" Font-Size="14" Font-Bold="true" Font-Names="+"  CssClass ="" Height="30px" Width="25px" OnClick="CrossButton_Click"/>

                     </asp:TableCell>


                    </asp:TableRow>
                     </asp:Table>
                  </asp:TableCell>
              </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell ColumnSpan="6">
                       <div class="gridview">
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="Text1" HeaderText="Inv Number" />
                                    <asp:BoundField DataField="Text2" HeaderText="Description" />
                                    <asp:BoundField DataField="Text3" HeaderText="Mfg" />
                                    <asp:BoundField DataField="Text4" HeaderText="Seral Number" />
                                    <asp:BoundField DataField="Text5" HeaderText="Loc.Code" />
                                </Columns>
                            </asp:GridView>
                       </div>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                 <asp:TableCell ColumnSpan="6">
                     <asp:Table runat="server">
                         <asp:TableRow>
                             <asp:TableCell>

                                &nbsp;  &nbsp;<asp:Label ID="lblResponsibleSig" runat="server" Text="Responsible Person Signature:" Width="250px" Font-Bold="true" Font-Size="18px"></asp:Label>
                                 <br />
                                 <br />
                             </asp:TableCell>
                             <asp:TableCell>
                                 <asp:Label ID="lblSign" runat="server" Text="Sign here" CssClass="bottom"></asp:Label>
                                 <br />
                                 <br />
                             </asp:TableCell>
                        </asp:TableRow>
                 


                     </asp:Table>

                 </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
    </form>
    <div runat="server">
        <button id="btnTestPage" class="shadowbutton">Reset Page</button>
        <button id="" class="shadowbutton">Reset Page</button>
        <button id="" class="shadowbutton">Reset Page</button>
    </div>
      </body>
    

</html>
