# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new vendingmachine work:vendingmachine:NOFILE -nosplit
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol inventory_manager work:inventory_manager:NOFILE HIERBOX pin CLK input.left pin sufficient_cash output.right pin update_inventory_OBUF output.right pinBus AR input.left [0:0] pinBus Q output.right [3:0] pinBus cash_IBUF input.left [4:0] pinBus prod2_count_reg[3]_0 output.right [3:0] pinBus prod3_count_reg[3]_0 output.right [3:0] pinBus product_sel_IBUF input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol FDPE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin PRE input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 1330
load port dispense output -pg 1 -lvl 6 -x 2920 -y 1910
load port rst input -pg 1 -lvl 0 -x 0 -y 1260
load port update_inventory output -pg 1 -lvl 6 -x 2920 -y 1980
load portBus balance output [5:0] -attr @name balance[5:0] -pg 1 -lvl 6 -x 2920 -y 490
load portBus cash input [5:0] -attr @name cash[5:0] -pg 1 -lvl 0 -x 0 -y 110
load portBus prod1_count output [3:0] -attr @name prod1_count[3:0] -pg 1 -lvl 6 -x 2920 -y 1350
load portBus prod2_count output [3:0] -attr @name prod2_count[3:0] -pg 1 -lvl 6 -x 2920 -y 1070
load portBus prod3_count output [3:0] -attr @name prod3_count[3:0] -pg 1 -lvl 6 -x 2920 -y 1630
load portBus product_cost output [5:0] -attr @name product_cost[5:0] -pg 1 -lvl 6 -x 2920 -y 40
load portBus product_sel input [1:0] -attr @name product_sel[1:0] -pg 1 -lvl 0 -x 0 -y 960
load inst balance_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 490
load inst balance_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 560
load inst balance_OBUF[1]_inst_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 4 -x 2440 -y 530
load inst balance_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 710
load inst balance_OBUF[2]_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 4 -x 2440 -y 660
load inst balance_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 860
load inst balance_OBUF[3]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 4 -x 2440 -y 810
load inst balance_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 930
load inst balance_OBUF[4]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 4 -x 2440 -y 980
load inst balance_OBUF[4]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 600 -y 930
load inst balance_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1000
load inst balance_OBUF[5]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 4 -x 2440 -y 1150
load inst balance_OBUF[5]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 3 -x 600 -y 1110
load inst cash_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 2440 -y 290
load inst cash_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 110
load inst cash_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 180
load inst cash_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 250
load inst cash_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 330
load inst cash_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 400
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 200 -y 1330
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 1330
load inst dispense_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1910
load inst inv_mgr inventory_manager work:inventory_manager:NOFILE -autohide -attr @cell(#000000) inventory_manager -attr @fillcolor #fafafa -pinBusAttr AR @name AR -pinBusAttr Q @name Q[3:0] -pinBusAttr cash_IBUF @name cash_IBUF[4:0] -pinBusAttr prod2_count_reg[3]_0 @name prod2_count_reg[3]_0[3:0] -pinBusAttr prod3_count_reg[3]_0 @name prod3_count_reg[3]_0[3:0] -pinBusAttr product_sel_IBUF @name product_sel_IBUF[1:0] -pg 1 -lvl 3 -x 600 -y 1308
load inst prod1_count_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1350
load inst prod1_count_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1420
load inst prod1_count_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1490
load inst prod1_count_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1560
load inst prod2_count_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1070
load inst prod2_count_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1140
load inst prod2_count_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1210
load inst prod2_count_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1280
load inst prod3_count_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1630
load inst prod3_count_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1700
load inst prod3_count_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1770
load inst prod3_count_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1840
load inst product_cost_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 40
load inst product_cost_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 130
load inst product_cost_OBUF[1]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 2440 -y 120
load inst product_cost_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 200
load inst product_cost_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 270
load inst product_cost_OBUF[3]_inst_i_1 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 4 -x 2440 -y 210
load inst product_cost_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 340
load inst product_cost_OBUF[4]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 2440 -y 350
load inst product_cost_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 420
load inst product_cost_OBUF[5]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 2440 -y 440
load inst product_sel_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 960
load inst product_sel_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 1030
load inst rst_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 200 -y 1260
load inst update_inventory_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 2680 -y 1980
load inst inv_mgr|dispense_OBUF_inst_i_1 LUT3 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_1 -attr @cell(#000000) LUT3 -pg 1 -lvl 4 -x 1870 -y 2598
load inst inv_mgr|dispense_OBUF_inst_i_2 LUT4 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_2 -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 1430 -y 1958
load inst inv_mgr|dispense_OBUF_inst_i_3 LUT6 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_3 -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 1070 -y 1978
load inst inv_mgr|dispense_OBUF_inst_i_4 LUT6 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_4 -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 1070 -y 2158
load inst inv_mgr|dispense_OBUF_inst_i_5 LUT6 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_5 -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 1070 -y 2438
load inst inv_mgr|dispense_OBUF_inst_i_6 LUT5 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_6 -attr @cell(#000000) LUT5 -pg 1 -lvl 1 -x 770 -y 2038
load inst inv_mgr|dispense_OBUF_inst_i_7 LUT5 hdi_primitives -hier inv_mgr -attr @name dispense_OBUF_inst_i_7 -attr @cell(#000000) LUT5 -pg 1 -lvl 1 -x 770 -y 2198
load inst inv_mgr|prod1_count[0]_i_1 LUT1 hdi_primitives -hier inv_mgr -attr @name prod1_count[0]_i_1 -attr @cell(#000000) LUT1 -pg 1 -lvl 3 -x 1430 -y 2778
load inst inv_mgr|prod1_count[1]_i_1 LUT2 hdi_primitives -hier inv_mgr -attr @name prod1_count[1]_i_1 -attr @cell(#000000) LUT2 -pg 1 -lvl 3 -x 1430 -y 2848
load inst inv_mgr|prod1_count[2]_i_1 LUT3 hdi_primitives -hier inv_mgr -attr @name prod1_count[2]_i_1 -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 1430 -y 2938
load inst inv_mgr|prod1_count[3]_i_1 LUT5 hdi_primitives -hier inv_mgr -attr @name prod1_count[3]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 1430 -y 3048
load inst inv_mgr|prod1_count[3]_i_2 LUT4 hdi_primitives -hier inv_mgr -attr @name prod1_count[3]_i_2 -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 1430 -y 3198
load inst inv_mgr|prod1_count_reg[0] FDCE hdi_primitives -hier inv_mgr -attr @name prod1_count_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1870 -y 2768
load inst inv_mgr|prod1_count_reg[1] FDPE hdi_primitives -hier inv_mgr -attr @name prod1_count_reg[1] -attr @cell(#000000) FDPE -pg 1 -lvl 4 -x 1870 -y 2918
load inst inv_mgr|prod1_count_reg[2] FDCE hdi_primitives -hier inv_mgr -attr @name prod1_count_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1870 -y 3068
load inst inv_mgr|prod1_count_reg[3] FDPE hdi_primitives -hier inv_mgr -attr @name prod1_count_reg[3] -attr @cell(#000000) FDPE -pg 1 -lvl 4 -x 1870 -y 3218
load inst inv_mgr|prod2_count[0]_i_1 LUT1 hdi_primitives -hier inv_mgr -attr @name prod2_count[0]_i_1 -attr @cell(#000000) LUT1 -pg 1 -lvl 3 -x 1430 -y 1378
load inst inv_mgr|prod2_count[1]_i_1 LUT2 hdi_primitives -hier inv_mgr -attr @name prod2_count[1]_i_1 -attr @cell(#000000) LUT2 -pg 1 -lvl 3 -x 1430 -y 1488
load inst inv_mgr|prod2_count[2]_i_1 LUT3 hdi_primitives -hier inv_mgr -attr @name prod2_count[2]_i_1 -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 1430 -y 1578
load inst inv_mgr|prod2_count[3]_i_1 LUT5 hdi_primitives -hier inv_mgr -attr @name prod2_count[3]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 1430 -y 2088
load inst inv_mgr|prod2_count[3]_i_2 LUT4 hdi_primitives -hier inv_mgr -attr @name prod2_count[3]_i_2 -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 1430 -y 2238
load inst inv_mgr|prod2_count_reg[0] FDCE hdi_primitives -hier inv_mgr -attr @name prod2_count_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1870 -y 1358
load inst inv_mgr|prod2_count_reg[1] FDPE hdi_primitives -hier inv_mgr -attr @name prod2_count_reg[1] -attr @cell(#000000) FDPE -pg 1 -lvl 4 -x 1870 -y 1508
load inst inv_mgr|prod2_count_reg[2] FDCE hdi_primitives -hier inv_mgr -attr @name prod2_count_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1870 -y 1658
load inst inv_mgr|prod2_count_reg[3] FDPE hdi_primitives -hier inv_mgr -attr @name prod2_count_reg[3] -attr @cell(#000000) FDPE -pg 1 -lvl 4 -x 1870 -y 2258
load inst inv_mgr|prod3_count[0]_i_1 LUT1 hdi_primitives -hier inv_mgr -attr @name prod3_count[0]_i_1 -attr @cell(#000000) LUT1 -pg 1 -lvl 3 -x 1430 -y 1688
load inst inv_mgr|prod3_count[1]_i_1 LUT2 hdi_primitives -hier inv_mgr -attr @name prod3_count[1]_i_1 -attr @cell(#000000) LUT2 -pg 1 -lvl 3 -x 1430 -y 1758
load inst inv_mgr|prod3_count[2]_i_1 LUT3 hdi_primitives -hier inv_mgr -attr @name prod3_count[2]_i_1 -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 1430 -y 1848
load inst inv_mgr|prod3_count[3]_i_1 LUT5 hdi_primitives -hier inv_mgr -attr @name prod3_count[3]_i_1 -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 1430 -y 2458
load inst inv_mgr|prod3_count[3]_i_2 LUT4 hdi_primitives -hier inv_mgr -attr @name prod3_count[3]_i_2 -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 1430 -y 2638
load inst inv_mgr|prod3_count_reg[0] FDCE hdi_primitives -hier inv_mgr -attr @name prod3_count_reg[0] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1870 -y 1808
load inst inv_mgr|prod3_count_reg[1] FDPE hdi_primitives -hier inv_mgr -attr @name prod3_count_reg[1] -attr @cell(#000000) FDPE -pg 1 -lvl 4 -x 1870 -y 1958
load inst inv_mgr|prod3_count_reg[2] FDCE hdi_primitives -hier inv_mgr -attr @name prod3_count_reg[2] -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1870 -y 2108
load inst inv_mgr|prod3_count_reg[3] FDPE hdi_primitives -hier inv_mgr -attr @name prod3_count_reg[3] -attr @cell(#000000) FDPE -pg 1 -lvl 4 -x 1870 -y 2498
load net <const0> -ground -pin product_cost_OBUF[0]_inst I
load net balance[0] -attr @rip(#000000) 0 -port balance[0] -pin balance_OBUF[0]_inst O
load net balance[1] -attr @rip(#000000) 1 -port balance[1] -pin balance_OBUF[1]_inst O
load net balance[2] -attr @rip(#000000) 2 -port balance[2] -pin balance_OBUF[2]_inst O
load net balance[3] -attr @rip(#000000) 3 -port balance[3] -pin balance_OBUF[3]_inst O
load net balance[4] -attr @rip(#000000) 4 -port balance[4] -pin balance_OBUF[4]_inst O
load net balance[5] -attr @rip(#000000) 5 -port balance[5] -pin balance_OBUF[5]_inst O
load net balance_OBUF[0] -pin balance_OBUF[0]_inst I -pin cash_IBUF[0]_inst O
netloc balance_OBUF[0] 1 4 1 2640 290n
load net balance_OBUF[1] -pin balance_OBUF[1]_inst I -pin balance_OBUF[1]_inst_i_1 O
netloc balance_OBUF[1] 1 4 1 N 560
load net balance_OBUF[2] -pin balance_OBUF[2]_inst I -pin balance_OBUF[2]_inst_i_1 O
netloc balance_OBUF[2] 1 4 1 N 710
load net balance_OBUF[3] -pin balance_OBUF[3]_inst I -pin balance_OBUF[3]_inst_i_1 O
netloc balance_OBUF[3] 1 4 1 N 860
load net balance_OBUF[4] -pin balance_OBUF[4]_inst I -pin balance_OBUF[4]_inst_i_1 O
netloc balance_OBUF[4] 1 4 1 2600 930n
load net balance_OBUF[4]_inst_i_2_n_0 -pin balance_OBUF[4]_inst_i_1 I0 -pin balance_OBUF[4]_inst_i_2 O
netloc balance_OBUF[4]_inst_i_2_n_0 1 3 1 2320 980n
load net balance_OBUF[5] -pin balance_OBUF[5]_inst I -pin balance_OBUF[5]_inst_i_1 O
netloc balance_OBUF[5] 1 4 1 2620 1000n
load net balance_OBUF[5]_inst_i_2_n_0 -pin balance_OBUF[5]_inst_i_1 I0 -pin balance_OBUF[5]_inst_i_2 O
netloc balance_OBUF[5]_inst_i_2_n_0 1 3 1 N 1160
load net cash[0] -attr @rip(#000000) cash[0] -port cash[0] -pin cash_IBUF[0]_inst I
load net cash[1] -attr @rip(#000000) cash[1] -port cash[1] -pin cash_IBUF[1]_inst I
load net cash[2] -attr @rip(#000000) cash[2] -port cash[2] -pin cash_IBUF[2]_inst I
load net cash[3] -attr @rip(#000000) cash[3] -port cash[3] -pin cash_IBUF[3]_inst I
load net cash[4] -attr @rip(#000000) cash[4] -port cash[4] -pin cash_IBUF[4]_inst I
load net cash[5] -attr @rip(#000000) cash[5] -port cash[5] -pin cash_IBUF[5]_inst I
load net cash_IBUF[1] -attr @rip(#000000) 0 -pin balance_OBUF[1]_inst_i_1 I2 -pin balance_OBUF[2]_inst_i_1 I0 -pin balance_OBUF[3]_inst_i_1 I0 -pin balance_OBUF[4]_inst_i_2 I4 -pin balance_OBUF[5]_inst_i_2 I4 -pin cash_IBUF[1]_inst O -pin inv_mgr cash_IBUF[0]
load net cash_IBUF[2] -attr @rip(#000000) 1 -pin balance_OBUF[2]_inst_i_1 I3 -pin balance_OBUF[3]_inst_i_1 I2 -pin balance_OBUF[4]_inst_i_2 I3 -pin balance_OBUF[5]_inst_i_2 I5 -pin cash_IBUF[2]_inst O -pin inv_mgr cash_IBUF[1]
load net cash_IBUF[3] -attr @rip(#000000) 2 -pin balance_OBUF[3]_inst_i_1 I4 -pin balance_OBUF[4]_inst_i_1 I3 -pin balance_OBUF[4]_inst_i_2 I0 -pin balance_OBUF[5]_inst_i_2 I2 -pin cash_IBUF[3]_inst O -pin inv_mgr cash_IBUF[2]
load net cash_IBUF[4] -attr @rip(#000000) 3 -pin balance_OBUF[4]_inst_i_1 I4 -pin balance_OBUF[5]_inst_i_1 I3 -pin balance_OBUF[5]_inst_i_2 I1 -pin cash_IBUF[4]_inst O -pin inv_mgr cash_IBUF[3]
load net cash_IBUF[5] -attr @rip(#000000) 4 -pin balance_OBUF[5]_inst_i_1 I4 -pin cash_IBUF[5]_inst O -pin inv_mgr cash_IBUF[4]
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 1330
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 1330
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin inv_mgr CLK
netloc clk_IBUF_BUFG 1 2 1 390J 1330n
load net dispense -port dispense -pin dispense_OBUF_inst O
netloc dispense 1 5 1 NJ 1910
load net prod1_count[0] -attr @rip(#000000) 0 -port prod1_count[0] -pin prod1_count_OBUF[0]_inst O
load net prod1_count[1] -attr @rip(#000000) 1 -port prod1_count[1] -pin prod1_count_OBUF[1]_inst O
load net prod1_count[2] -attr @rip(#000000) 2 -port prod1_count[2] -pin prod1_count_OBUF[2]_inst O
load net prod1_count[3] -attr @rip(#000000) 3 -port prod1_count[3] -pin prod1_count_OBUF[3]_inst O
load net prod1_count_OBUF[0] -attr @rip(#000000) Q[0] -pin inv_mgr Q[0] -pin prod1_count_OBUF[0]_inst I
load net prod1_count_OBUF[1] -attr @rip(#000000) Q[1] -pin inv_mgr Q[1] -pin prod1_count_OBUF[1]_inst I
load net prod1_count_OBUF[2] -attr @rip(#000000) Q[2] -pin inv_mgr Q[2] -pin prod1_count_OBUF[2]_inst I
load net prod1_count_OBUF[3] -attr @rip(#000000) Q[3] -pin inv_mgr Q[3] -pin prod1_count_OBUF[3]_inst I
load net prod2_count[0] -attr @rip(#000000) 0 -port prod2_count[0] -pin prod2_count_OBUF[0]_inst O
load net prod2_count[1] -attr @rip(#000000) 1 -port prod2_count[1] -pin prod2_count_OBUF[1]_inst O
load net prod2_count[2] -attr @rip(#000000) 2 -port prod2_count[2] -pin prod2_count_OBUF[2]_inst O
load net prod2_count[3] -attr @rip(#000000) 3 -port prod2_count[3] -pin prod2_count_OBUF[3]_inst O
load net prod2_count_OBUF[0] -attr @rip(#000000) prod2_count_reg[3]_0[0] -pin inv_mgr prod2_count_reg[3]_0[0] -pin prod2_count_OBUF[0]_inst I
load net prod2_count_OBUF[1] -attr @rip(#000000) prod2_count_reg[3]_0[1] -pin inv_mgr prod2_count_reg[3]_0[1] -pin prod2_count_OBUF[1]_inst I
load net prod2_count_OBUF[2] -attr @rip(#000000) prod2_count_reg[3]_0[2] -pin inv_mgr prod2_count_reg[3]_0[2] -pin prod2_count_OBUF[2]_inst I
load net prod2_count_OBUF[3] -attr @rip(#000000) prod2_count_reg[3]_0[3] -pin inv_mgr prod2_count_reg[3]_0[3] -pin prod2_count_OBUF[3]_inst I
load net prod3_count[0] -attr @rip(#000000) 0 -port prod3_count[0] -pin prod3_count_OBUF[0]_inst O
load net prod3_count[1] -attr @rip(#000000) 1 -port prod3_count[1] -pin prod3_count_OBUF[1]_inst O
load net prod3_count[2] -attr @rip(#000000) 2 -port prod3_count[2] -pin prod3_count_OBUF[2]_inst O
load net prod3_count[3] -attr @rip(#000000) 3 -port prod3_count[3] -pin prod3_count_OBUF[3]_inst O
load net prod3_count_OBUF[0] -attr @rip(#000000) prod3_count_reg[3]_0[0] -pin inv_mgr prod3_count_reg[3]_0[0] -pin prod3_count_OBUF[0]_inst I
load net prod3_count_OBUF[1] -attr @rip(#000000) prod3_count_reg[3]_0[1] -pin inv_mgr prod3_count_reg[3]_0[1] -pin prod3_count_OBUF[1]_inst I
load net prod3_count_OBUF[2] -attr @rip(#000000) prod3_count_reg[3]_0[2] -pin inv_mgr prod3_count_reg[3]_0[2] -pin prod3_count_OBUF[2]_inst I
load net prod3_count_OBUF[3] -attr @rip(#000000) prod3_count_reg[3]_0[3] -pin inv_mgr prod3_count_reg[3]_0[3] -pin prod3_count_OBUF[3]_inst I
load net product_cost[0] -attr @rip(#000000) 0 -port product_cost[0] -pin product_cost_OBUF[0]_inst O
load net product_cost[1] -attr @rip(#000000) 1 -port product_cost[1] -pin product_cost_OBUF[1]_inst O
load net product_cost[2] -attr @rip(#000000) 2 -port product_cost[2] -pin product_cost_OBUF[2]_inst O
load net product_cost[3] -attr @rip(#000000) 3 -port product_cost[3] -pin product_cost_OBUF[3]_inst O
load net product_cost[4] -attr @rip(#000000) 4 -port product_cost[4] -pin product_cost_OBUF[4]_inst O
load net product_cost[5] -attr @rip(#000000) 5 -port product_cost[5] -pin product_cost_OBUF[5]_inst O
load net product_cost_OBUF[1] -pin product_cost_OBUF[1]_inst I -pin product_cost_OBUF[1]_inst_i_1 O
netloc product_cost_OBUF[1] 1 4 1 N 130
load net product_cost_OBUF[2] -pin product_cost_OBUF[2]_inst I -pin product_cost_OBUF[4]_inst I -pin product_cost_OBUF[4]_inst_i_1 O
netloc product_cost_OBUF[2] 1 4 1 2600 200n
load net product_cost_OBUF[3] -pin product_cost_OBUF[3]_inst I -pin product_cost_OBUF[3]_inst_i_1 O
netloc product_cost_OBUF[3] 1 4 1 2640 220n
load net product_cost_OBUF[5] -pin product_cost_OBUF[5]_inst I -pin product_cost_OBUF[5]_inst_i_1 O
netloc product_cost_OBUF[5] 1 4 1 2600 420n
load net product_sel[0] -attr @rip(#000000) product_sel[0] -port product_sel[0] -pin product_sel_IBUF[0]_inst I
load net product_sel[1] -attr @rip(#000000) product_sel[1] -port product_sel[1] -pin product_sel_IBUF[1]_inst I
load net product_sel_IBUF[0] -attr @rip(#000000) 0 -pin balance_OBUF[1]_inst_i_1 I0 -pin balance_OBUF[2]_inst_i_1 I1 -pin balance_OBUF[3]_inst_i_1 I1 -pin balance_OBUF[4]_inst_i_1 I2 -pin balance_OBUF[4]_inst_i_2 I1 -pin balance_OBUF[5]_inst_i_1 I1 -pin balance_OBUF[5]_inst_i_2 I3 -pin inv_mgr product_sel_IBUF[0] -pin product_cost_OBUF[1]_inst_i_1 I1 -pin product_cost_OBUF[3]_inst_i_1 I0 -pin product_cost_OBUF[4]_inst_i_1 I0 -pin product_cost_OBUF[5]_inst_i_1 I1 -pin product_sel_IBUF[0]_inst O
load net product_sel_IBUF[1] -attr @rip(#000000) 1 -pin balance_OBUF[1]_inst_i_1 I1 -pin balance_OBUF[2]_inst_i_1 I2 -pin balance_OBUF[3]_inst_i_1 I3 -pin balance_OBUF[4]_inst_i_1 I1 -pin balance_OBUF[4]_inst_i_2 I2 -pin balance_OBUF[5]_inst_i_1 I2 -pin balance_OBUF[5]_inst_i_2 I0 -pin inv_mgr product_sel_IBUF[1] -pin product_cost_OBUF[1]_inst_i_1 I0 -pin product_cost_OBUF[4]_inst_i_1 I1 -pin product_cost_OBUF[5]_inst_i_1 I0 -pin product_sel_IBUF[1]_inst O
load net rst -port rst -pin rst_IBUF_inst I
netloc rst 1 0 2 NJ 1260 NJ
load net rst_IBUF -attr @rip(#000000) 0 -pin inv_mgr AR[0] -pin rst_IBUF_inst O
netloc rst_IBUF 1 2 1 450J 1260n
load net sufficient_cash -pin balance_OBUF[1]_inst_i_1 I3 -pin balance_OBUF[2]_inst_i_1 I4 -pin balance_OBUF[3]_inst_i_1 I5 -pin balance_OBUF[4]_inst_i_1 I5 -pin balance_OBUF[5]_inst_i_1 I5 -pin inv_mgr sufficient_cash
netloc sufficient_cash 1 3 1 2300 600n
load net update_inventory -port update_inventory -pin update_inventory_OBUF_inst O
netloc update_inventory 1 5 1 NJ 1980
load net update_inventory_OBUF -pin dispense_OBUF_inst I -pin inv_mgr update_inventory_OBUF -pin update_inventory_OBUF_inst I
netloc update_inventory_OBUF 1 3 2 2340J 1390 2620
load net inv_mgr|AR[0] -attr @name AR[0] -attr @rip(#000000) AR[0] -hierPin inv_mgr AR[0] -pin inv_mgr|prod1_count_reg[0] CLR -pin inv_mgr|prod1_count_reg[1] PRE -pin inv_mgr|prod1_count_reg[2] CLR -pin inv_mgr|prod1_count_reg[3] PRE -pin inv_mgr|prod2_count_reg[0] CLR -pin inv_mgr|prod2_count_reg[1] PRE -pin inv_mgr|prod2_count_reg[2] CLR -pin inv_mgr|prod2_count_reg[3] PRE -pin inv_mgr|prod3_count_reg[0] CLR -pin inv_mgr|prod3_count_reg[1] PRE -pin inv_mgr|prod3_count_reg[2] CLR -pin inv_mgr|prod3_count_reg[3] PRE
netloc inv_mgr|AR[0] 1 0 4 NJ 2348 NJ 2348 NJ 2348 1730
load net inv_mgr|CLK -attr @name CLK -hierPin inv_mgr CLK -pin inv_mgr|prod1_count_reg[0] C -pin inv_mgr|prod1_count_reg[1] C -pin inv_mgr|prod1_count_reg[2] C -pin inv_mgr|prod1_count_reg[3] C -pin inv_mgr|prod2_count_reg[0] C -pin inv_mgr|prod2_count_reg[1] C -pin inv_mgr|prod2_count_reg[2] C -pin inv_mgr|prod2_count_reg[3] C -pin inv_mgr|prod3_count_reg[0] C -pin inv_mgr|prod3_count_reg[1] C -pin inv_mgr|prod3_count_reg[2] C -pin inv_mgr|prod3_count_reg[3] C
netloc inv_mgr|CLK 1 0 4 NJ 2368 NJ 2368 NJ 2368 1630
load net inv_mgr|Q[0] -attr @name Q[0] -attr @rip(#000000) 0 -hierPin inv_mgr Q[0] -pin inv_mgr|dispense_OBUF_inst_i_6 I4 -pin inv_mgr|prod1_count[0]_i_1 I0 -pin inv_mgr|prod1_count[1]_i_1 I0 -pin inv_mgr|prod1_count[2]_i_1 I1 -pin inv_mgr|prod1_count[3]_i_2 I1 -pin inv_mgr|prod1_count_reg[0] Q
load net inv_mgr|Q[1] -attr @name Q[1] -attr @rip(#000000) 1 -hierPin inv_mgr Q[1] -pin inv_mgr|dispense_OBUF_inst_i_4 I0 -pin inv_mgr|prod1_count[1]_i_1 I1 -pin inv_mgr|prod1_count[2]_i_1 I0 -pin inv_mgr|prod1_count[3]_i_2 I2 -pin inv_mgr|prod1_count_reg[1] Q
load net inv_mgr|Q[2] -attr @name Q[2] -attr @rip(#000000) 2 -hierPin inv_mgr Q[2] -pin inv_mgr|dispense_OBUF_inst_i_7 I4 -pin inv_mgr|prod1_count[2]_i_1 I2 -pin inv_mgr|prod1_count[3]_i_2 I0 -pin inv_mgr|prod1_count_reg[2] Q
load net inv_mgr|Q[3] -attr @name Q[3] -attr @rip(#000000) 3 -hierPin inv_mgr Q[3] -pin inv_mgr|dispense_OBUF_inst_i_3 I0 -pin inv_mgr|prod1_count[3]_i_2 I3 -pin inv_mgr|prod1_count_reg[3] Q
load net inv_mgr|cash_IBUF[0] -attr @name cash_IBUF[0] -attr @rip(#000000) cash_IBUF[0] -hierPin inv_mgr cash_IBUF[0] -pin inv_mgr|dispense_OBUF_inst_i_5 I0
load net inv_mgr|cash_IBUF[1] -attr @name cash_IBUF[1] -attr @rip(#000000) cash_IBUF[1] -hierPin inv_mgr cash_IBUF[1] -pin inv_mgr|dispense_OBUF_inst_i_5 I1
load net inv_mgr|cash_IBUF[2] -attr @name cash_IBUF[2] -attr @rip(#000000) cash_IBUF[2] -hierPin inv_mgr cash_IBUF[2] -pin inv_mgr|dispense_OBUF_inst_i_5 I2
load net inv_mgr|cash_IBUF[3] -attr @name cash_IBUF[3] -attr @rip(#000000) cash_IBUF[3] -hierPin inv_mgr cash_IBUF[3] -pin inv_mgr|dispense_OBUF_inst_i_5 I5
load net inv_mgr|cash_IBUF[4] -attr @name cash_IBUF[4] -attr @rip(#000000) cash_IBUF[4] -hierPin inv_mgr cash_IBUF[4] -pin inv_mgr|dispense_OBUF_inst_i_2 I3
load net inv_mgr|dispense_OBUF_inst_i_3_n_0 -attr @name dispense_OBUF_inst_i_3_n_0 -pin inv_mgr|dispense_OBUF_inst_i_1 I1 -pin inv_mgr|dispense_OBUF_inst_i_3 O -pin inv_mgr|prod1_count[3]_i_1 I1 -pin inv_mgr|prod2_count[3]_i_1 I1 -pin inv_mgr|prod3_count[3]_i_1 I1
netloc inv_mgr|dispense_OBUF_inst_i_3_n_0 1 2 2 1290 2588 1590
load net inv_mgr|dispense_OBUF_inst_i_4_n_0 -attr @name dispense_OBUF_inst_i_4_n_0 -pin inv_mgr|dispense_OBUF_inst_i_1 I2 -pin inv_mgr|dispense_OBUF_inst_i_4 O -pin inv_mgr|prod1_count[3]_i_1 I0 -pin inv_mgr|prod2_count[3]_i_1 I0 -pin inv_mgr|prod3_count[3]_i_1 I0
netloc inv_mgr|dispense_OBUF_inst_i_4_n_0 1 2 2 1330 2608 1570
load net inv_mgr|dispense_OBUF_inst_i_5_n_0 -attr @name dispense_OBUF_inst_i_5_n_0 -pin inv_mgr|dispense_OBUF_inst_i_2 I0 -pin inv_mgr|dispense_OBUF_inst_i_5 O
netloc inv_mgr|dispense_OBUF_inst_i_5_n_0 1 2 1 1210 1968n
load net inv_mgr|dispense_OBUF_inst_i_6_n_0 -attr @name dispense_OBUF_inst_i_6_n_0 -pin inv_mgr|dispense_OBUF_inst_i_3 I5 -pin inv_mgr|dispense_OBUF_inst_i_6 O
netloc inv_mgr|dispense_OBUF_inst_i_6_n_0 1 1 1 N 2088
load net inv_mgr|dispense_OBUF_inst_i_7_n_0 -attr @name dispense_OBUF_inst_i_7_n_0 -pin inv_mgr|dispense_OBUF_inst_i_4 I5 -pin inv_mgr|dispense_OBUF_inst_i_7 O
netloc inv_mgr|dispense_OBUF_inst_i_7_n_0 1 1 1 950 2248n
load net inv_mgr|prod1_count0[0] -attr @name prod1_count0[0] -pin inv_mgr|prod1_count[0]_i_1 O -pin inv_mgr|prod1_count_reg[0] D
netloc inv_mgr|prod1_count0[0] 1 3 1 1570 2788n
load net inv_mgr|prod1_count[1]_i_1_n_0 -attr @name prod1_count[1]_i_1_n_0 -pin inv_mgr|prod1_count[1]_i_1 O -pin inv_mgr|prod1_count_reg[1] D
netloc inv_mgr|prod1_count[1]_i_1_n_0 1 3 1 1570 2858n
load net inv_mgr|prod1_count[2]_i_1_n_0 -attr @name prod1_count[2]_i_1_n_0 -pin inv_mgr|prod1_count[2]_i_1 O -pin inv_mgr|prod1_count_reg[2] D
netloc inv_mgr|prod1_count[2]_i_1_n_0 1 3 1 1610 2968n
load net inv_mgr|prod1_count[3]_i_1_n_0 -attr @name prod1_count[3]_i_1_n_0 -pin inv_mgr|prod1_count[3]_i_1 O -pin inv_mgr|prod1_count_reg[0] CE -pin inv_mgr|prod1_count_reg[1] CE -pin inv_mgr|prod1_count_reg[2] CE -pin inv_mgr|prod1_count_reg[3] CE
netloc inv_mgr|prod1_count[3]_i_1_n_0 1 3 1 1590 2758n
load net inv_mgr|prod1_count[3]_i_2_n_0 -attr @name prod1_count[3]_i_2_n_0 -pin inv_mgr|prod1_count[3]_i_2 O -pin inv_mgr|prod1_count_reg[3] D
netloc inv_mgr|prod1_count[3]_i_2_n_0 1 3 1 N 3228
load net inv_mgr|prod2_count0[0] -attr @name prod2_count0[0] -pin inv_mgr|prod2_count[0]_i_1 O -pin inv_mgr|prod2_count_reg[0] D
netloc inv_mgr|prod2_count0[0] 1 3 1 N 1388
load net inv_mgr|prod2_count[1]_i_1_n_0 -attr @name prod2_count[1]_i_1_n_0 -pin inv_mgr|prod2_count[1]_i_1 O -pin inv_mgr|prod2_count_reg[1] D
netloc inv_mgr|prod2_count[1]_i_1_n_0 1 3 1 1750 1498n
load net inv_mgr|prod2_count[2]_i_1_n_0 -attr @name prod2_count[2]_i_1_n_0 -pin inv_mgr|prod2_count[2]_i_1 O -pin inv_mgr|prod2_count_reg[2] D
netloc inv_mgr|prod2_count[2]_i_1_n_0 1 3 1 1790 1608n
load net inv_mgr|prod2_count[3]_i_1_n_0 -attr @name prod2_count[3]_i_1_n_0 -pin inv_mgr|prod2_count[3]_i_1 O -pin inv_mgr|prod2_count_reg[0] CE -pin inv_mgr|prod2_count_reg[1] CE -pin inv_mgr|prod2_count_reg[2] CE -pin inv_mgr|prod2_count_reg[3] CE
netloc inv_mgr|prod2_count[3]_i_1_n_0 1 3 1 1770 1348n
load net inv_mgr|prod2_count[3]_i_2_n_0 -attr @name prod2_count[3]_i_2_n_0 -pin inv_mgr|prod2_count[3]_i_2 O -pin inv_mgr|prod2_count_reg[3] D
netloc inv_mgr|prod2_count[3]_i_2_n_0 1 3 1 N 2268
load net inv_mgr|prod2_count_reg[3]_0[0] -attr @name prod2_count_reg[3]_0[0] -attr @rip(#000000) 0 -hierPin inv_mgr prod2_count_reg[3]_0[0] -pin inv_mgr|dispense_OBUF_inst_i_6 I2 -pin inv_mgr|prod2_count[0]_i_1 I0 -pin inv_mgr|prod2_count[1]_i_1 I0 -pin inv_mgr|prod2_count[2]_i_1 I1 -pin inv_mgr|prod2_count[3]_i_2 I1 -pin inv_mgr|prod2_count_reg[0] Q
load net inv_mgr|prod2_count_reg[3]_0[1] -attr @name prod2_count_reg[3]_0[1] -attr @rip(#000000) 1 -hierPin inv_mgr prod2_count_reg[3]_0[1] -pin inv_mgr|dispense_OBUF_inst_i_4 I2 -pin inv_mgr|prod2_count[1]_i_1 I1 -pin inv_mgr|prod2_count[2]_i_1 I0 -pin inv_mgr|prod2_count[3]_i_2 I2 -pin inv_mgr|prod2_count_reg[1] Q
load net inv_mgr|prod2_count_reg[3]_0[2] -attr @name prod2_count_reg[3]_0[2] -attr @rip(#000000) 2 -hierPin inv_mgr prod2_count_reg[3]_0[2] -pin inv_mgr|dispense_OBUF_inst_i_7 I2 -pin inv_mgr|prod2_count[2]_i_1 I2 -pin inv_mgr|prod2_count[3]_i_2 I0 -pin inv_mgr|prod2_count_reg[2] Q
load net inv_mgr|prod2_count_reg[3]_0[3] -attr @name prod2_count_reg[3]_0[3] -attr @rip(#000000) 3 -hierPin inv_mgr prod2_count_reg[3]_0[3] -pin inv_mgr|dispense_OBUF_inst_i_3 I2 -pin inv_mgr|prod2_count[3]_i_2 I3 -pin inv_mgr|prod2_count_reg[3] Q
load net inv_mgr|prod3_count0[0] -attr @name prod3_count0[0] -pin inv_mgr|prod3_count[0]_i_1 O -pin inv_mgr|prod3_count_reg[0] D
netloc inv_mgr|prod3_count0[0] 1 3 1 1750 1698n
load net inv_mgr|prod3_count[1]_i_1_n_0 -attr @name prod3_count[1]_i_1_n_0 -pin inv_mgr|prod3_count[1]_i_1 O -pin inv_mgr|prod3_count_reg[1] D
netloc inv_mgr|prod3_count[1]_i_1_n_0 1 3 1 1570 1768n
load net inv_mgr|prod3_count[2]_i_1_n_0 -attr @name prod3_count[2]_i_1_n_0 -pin inv_mgr|prod3_count[2]_i_1 O -pin inv_mgr|prod3_count_reg[2] D
netloc inv_mgr|prod3_count[2]_i_1_n_0 1 3 1 1790 1878n
load net inv_mgr|prod3_count[3]_i_1_n_0 -attr @name prod3_count[3]_i_1_n_0 -pin inv_mgr|prod3_count[3]_i_1 O -pin inv_mgr|prod3_count_reg[0] CE -pin inv_mgr|prod3_count_reg[1] CE -pin inv_mgr|prod3_count_reg[2] CE -pin inv_mgr|prod3_count_reg[3] CE
netloc inv_mgr|prod3_count[3]_i_1_n_0 1 3 1 1670 1798n
load net inv_mgr|prod3_count[3]_i_2_n_0 -attr @name prod3_count[3]_i_2_n_0 -pin inv_mgr|prod3_count[3]_i_2 O -pin inv_mgr|prod3_count_reg[3] D
netloc inv_mgr|prod3_count[3]_i_2_n_0 1 3 1 1790 2508n
load net inv_mgr|prod3_count_reg[3]_0[0] -attr @name prod3_count_reg[3]_0[0] -attr @rip(#000000) 0 -hierPin inv_mgr prod3_count_reg[3]_0[0] -pin inv_mgr|dispense_OBUF_inst_i_6 I0 -pin inv_mgr|prod3_count[0]_i_1 I0 -pin inv_mgr|prod3_count[1]_i_1 I0 -pin inv_mgr|prod3_count[2]_i_1 I1 -pin inv_mgr|prod3_count[3]_i_2 I1 -pin inv_mgr|prod3_count_reg[0] Q
load net inv_mgr|prod3_count_reg[3]_0[1] -attr @name prod3_count_reg[3]_0[1] -attr @rip(#000000) 1 -hierPin inv_mgr prod3_count_reg[3]_0[1] -pin inv_mgr|dispense_OBUF_inst_i_4 I4 -pin inv_mgr|prod3_count[1]_i_1 I1 -pin inv_mgr|prod3_count[2]_i_1 I0 -pin inv_mgr|prod3_count[3]_i_2 I2 -pin inv_mgr|prod3_count_reg[1] Q
load net inv_mgr|prod3_count_reg[3]_0[2] -attr @name prod3_count_reg[3]_0[2] -attr @rip(#000000) 2 -hierPin inv_mgr prod3_count_reg[3]_0[2] -pin inv_mgr|dispense_OBUF_inst_i_7 I0 -pin inv_mgr|prod3_count[2]_i_1 I2 -pin inv_mgr|prod3_count[3]_i_2 I0 -pin inv_mgr|prod3_count_reg[2] Q
load net inv_mgr|prod3_count_reg[3]_0[3] -attr @name prod3_count_reg[3]_0[3] -attr @rip(#000000) 3 -hierPin inv_mgr prod3_count_reg[3]_0[3] -pin inv_mgr|dispense_OBUF_inst_i_3 I4 -pin inv_mgr|prod3_count[3]_i_2 I3 -pin inv_mgr|prod3_count_reg[3] Q
load net inv_mgr|product_sel_IBUF[0] -attr @name product_sel_IBUF[0] -attr @rip(#000000) product_sel_IBUF[0] -hierPin inv_mgr product_sel_IBUF[0] -pin inv_mgr|dispense_OBUF_inst_i_2 I2 -pin inv_mgr|dispense_OBUF_inst_i_3 I1 -pin inv_mgr|dispense_OBUF_inst_i_4 I1 -pin inv_mgr|dispense_OBUF_inst_i_5 I3 -pin inv_mgr|dispense_OBUF_inst_i_6 I3 -pin inv_mgr|dispense_OBUF_inst_i_7 I3 -pin inv_mgr|prod1_count[3]_i_1 I4 -pin inv_mgr|prod2_count[3]_i_1 I4 -pin inv_mgr|prod3_count[3]_i_1 I3
load net inv_mgr|product_sel_IBUF[1] -attr @name product_sel_IBUF[1] -attr @rip(#000000) product_sel_IBUF[1] -hierPin inv_mgr product_sel_IBUF[1] -pin inv_mgr|dispense_OBUF_inst_i_2 I1 -pin inv_mgr|dispense_OBUF_inst_i_3 I3 -pin inv_mgr|dispense_OBUF_inst_i_4 I3 -pin inv_mgr|dispense_OBUF_inst_i_5 I4 -pin inv_mgr|dispense_OBUF_inst_i_6 I1 -pin inv_mgr|dispense_OBUF_inst_i_7 I1 -pin inv_mgr|prod1_count[3]_i_1 I3 -pin inv_mgr|prod2_count[3]_i_1 I3 -pin inv_mgr|prod3_count[3]_i_1 I4
load net inv_mgr|sufficient_cash -attr @name sufficient_cash -hierPin inv_mgr sufficient_cash -pin inv_mgr|dispense_OBUF_inst_i_1 I0 -pin inv_mgr|dispense_OBUF_inst_i_2 O -pin inv_mgr|prod1_count[3]_i_1 I2 -pin inv_mgr|prod2_count[3]_i_1 I2 -pin inv_mgr|prod3_count[3]_i_1 I2
netloc inv_mgr|sufficient_cash 1 2 3 1350 2428 1710 2418 NJ
load net inv_mgr|update_inventory_OBUF -attr @name update_inventory_OBUF -hierPin inv_mgr update_inventory_OBUF -pin inv_mgr|dispense_OBUF_inst_i_1 O
netloc inv_mgr|update_inventory_OBUF 1 4 1 N 2628
load netBundle @inv_mgr|cash_IBUF 5 inv_mgr|cash_IBUF[4] inv_mgr|cash_IBUF[3] inv_mgr|cash_IBUF[2] inv_mgr|cash_IBUF[1] inv_mgr|cash_IBUF[0] -autobundled
netbloc @inv_mgr|cash_IBUF 1 0 3 NJ 2388 910 2388 1310
load netBundle @inv_mgr|product_sel_IBUF 2 inv_mgr|product_sel_IBUF[1] inv_mgr|product_sel_IBUF[0] -autobundled
netbloc @inv_mgr|product_sel_IBUF 1 0 3 630 2408 990 2408 1230
load netBundle @inv_mgr|Q 4 inv_mgr|Q[3] inv_mgr|Q[2] inv_mgr|Q[1] inv_mgr|Q[0] -autobundled
netbloc @inv_mgr|Q 1 0 5 650 2328 930 2588 1210 2748 1570J 2688 2050
load netBundle @inv_mgr|prod2_count_reg 4 inv_mgr|prod2_count_reg[3]_0[3] inv_mgr|prod2_count_reg[3]_0[2] inv_mgr|prod2_count_reg[3]_0[1] inv_mgr|prod2_count_reg[3]_0[0] -autobundled
netbloc @inv_mgr|prod2_count_reg 1 0 5 670 2168 910 2128 1270 2388 1650J 2378 2030
load netBundle @inv_mgr|prod3_count_reg 4 inv_mgr|prod3_count_reg[3]_0[3] inv_mgr|prod3_count_reg[3]_0[2] inv_mgr|prod3_count_reg[3]_0[1] inv_mgr|prod3_count_reg[3]_0[0] -autobundled
netbloc @inv_mgr|prod3_count_reg 1 0 5 690 2008 970 2308 1250 2408 1690J 2398 2010
load netBundle @cash 6 cash[5] cash[4] cash[3] cash[2] cash[1] cash[0] -autobundled
netbloc @cash 1 0 4 NJ 110 160 290 NJ 290 2340J
load netBundle @product_sel 2 product_sel[1] product_sel[0] -autobundled
netbloc @product_sel 1 0 2 NJ 960 160
load netBundle @balance 6 balance[5] balance[4] balance[3] balance[2] balance[1] balance[0] -autobundled
netbloc @balance 1 5 1 2900 490n
load netBundle @prod1_count 4 prod1_count[3] prod1_count[2] prod1_count[1] prod1_count[0] -autobundled
netbloc @prod1_count 1 5 1 2900 1350n
load netBundle @prod2_count 4 prod2_count[3] prod2_count[2] prod2_count[1] prod2_count[0] -autobundled
netbloc @prod2_count 1 5 1 2900 1070n
load netBundle @prod3_count 4 prod3_count[3] prod3_count[2] prod3_count[1] prod3_count[0] -autobundled
netbloc @prod3_count 1 5 1 2900 1630n
load netBundle @product_cost 6 product_cost[5] product_cost[4] product_cost[3] product_cost[2] product_cost[1] product_cost[0] -autobundled
netbloc @product_cost 1 5 1 2900 40n
load netBundle @prod1_count_OBUF 4 prod1_count_OBUF[3] prod1_count_OBUF[2] prod1_count_OBUF[1] prod1_count_OBUF[0] -autobundled
netbloc @prod1_count_OBUF 1 3 2 2280 1320 2640
load netBundle @prod2_count_OBUF 4 prod2_count_OBUF[3] prod2_count_OBUF[2] prod2_count_OBUF[1] prod2_count_OBUF[0] -autobundled
netbloc @prod2_count_OBUF 1 3 2 2260 1300 2640
load netBundle @prod3_count_OBUF 4 prod3_count_OBUF[3] prod3_count_OBUF[2] prod3_count_OBUF[1] prod3_count_OBUF[0] -autobundled
netbloc @prod3_count_OBUF 1 3 2 2320 1410 2600
load netBundle @cash_IBUF 5 cash_IBUF[5] cash_IBUF[4] cash_IBUF[3] cash_IBUF[2] cash_IBUF[1] -autobundled
netbloc @cash_IBUF 1 2 2 430 1060 2340
load netBundle @product_sel_IBUF 2 product_sel_IBUF[1] product_sel_IBUF[0] -autobundled
netbloc @product_sel_IBUF 1 2 2 410 1080 2260
levelinfo -pg 1 0 40 200 600 2440 2680 2920
levelinfo -hier inv_mgr * 770 1070 1430 1870 *
pagesize -pg 1 -db -bbox -sgen -150 0 3080 3340
pagesize -hier inv_mgr -db -bbox -sgen 600 1278 2080 3308
show
zoom 0.173963
scrollpos -402 0
#
# initialize ictrl to current module vendingmachine work:vendingmachine:NOFILE
ictrl init topinfo |
