<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW_OK(4)" />
        <signal name="XLXN_3" />
        <signal name="clk_100mhz" />
        <signal name="rst" />
        <signal name="XLXN_6" />
        <signal name="Div(20)" />
        <signal name="XLXN_8(31:0)" />
        <signal name="LEDCLK" />
        <signal name="LEDDT" />
        <signal name="LEDCLR" />
        <signal name="V5" />
        <signal name="N0" />
        <signal name="N0,N0,M0,N0,N0,SW(3),Div(27:24)" />
        <signal name="XLXN_43(31:0)" />
        <signal name="XLXN_45(31:0)" />
        <signal name="XLXN_40(7:0)" />
        <signal name="XLXN_39(7:0)" />
        <signal name="XLXN_38(31:0)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="clk200P" />
        <signal name="clk200N" />
        <signal name="Div(31:0)" />
        <signal name="XLXN_69(31:0)" />
        <signal name="XLXN_70(31:0)" />
        <signal name="XLXN_71(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="Ai(31:0)" />
        <signal name="LES(63:0)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5)" />
        <signal name="RSTN" />
        <signal name="readn" />
        <signal name="BTN_y(3:0)" />
        <signal name="SW(15:0)" />
        <signal name="RDY" />
        <signal name="CR" />
        <signal name="BTN_x(4:0)" />
        <signal name="XLXN_93(4:0)" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="blink(7:0)" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="Disp_num(31:0)" />
        <signal name="point_out(7:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="Buzzer" />
        <signal name="LED(7:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="SEGEN" />
        <signal name="SEGDT" />
        <signal name="XLXN_28" />
        <signal name="SEGCLK" />
        <port polarity="Output" name="LEDCLK" />
        <port polarity="Output" name="LEDDT" />
        <port polarity="Output" name="LEDCLR" />
        <port polarity="Input" name="clk200P" />
        <port polarity="Input" name="clk200N" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="readn" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="SEGEN" />
        <port polarity="Output" name="SEGDT" />
        <port polarity="Output" name="SEGCLK" />
        <blockdef name="RAM_B">
            <timestamp>2018-5-26T1:57:58</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2018-5-26T2:55:26</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2018-5-26T1:51:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2018-5-26T1:48:12</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-336" y2="-336" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2018-5-26T1:49:2</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="SAnti_jitter">
            <timestamp>2018-5-26T1:50:49</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-156" height="24" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2018-5-26T1:50:58</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-220" height="24" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2018-5-26T1:50:44</timestamp>
            <rect width="320" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-876" height="24" />
            <line x2="448" y1="-864" y2="-864" x1="384" />
            <rect width="64" x="384" y="-460" height="24" />
            <line x2="448" y1="-448" y2="-448" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2018-5-26T1:53:18</timestamp>
            <rect width="288" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-364" height="24" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2018-5-26T1:53:11</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-140" height="24" />
            <line x2="480" y1="-128" y2="-128" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="XLXN_93(4:0)" name="Din(4:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="N0,N0,M0,N0,N0,SW(3),Div(27:24)" name="addra(9:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="dina(31:0)" />
            <blockpin signalname="SW_OK(4)" name="wea(0:0)" />
            <blockpin signalname="XLXN_3" name="clka" />
            <blockpin signalname="XLXN_45(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_6" name="Start" />
            <blockpin signalname="Div(20)" name="EN" />
            <blockpin signalname="XLXN_8(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="LEDCLK" name="led_clk" />
            <blockpin signalname="LEDDT" name="led_sout" />
            <blockpin signalname="LEDCLR" name="led_clrn" />
            <blockpin name="LED_PEN" />
            <blockpin name="counter_set(1:0)" />
            <blockpin name="LED_out(15:0)" />
            <blockpin name="GPIOf0(13:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_19">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_20">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="ROM_D" name="U2">
            <blockpin signalname="N0,N0,M0,N0,N0,SW(3),Div(27:24)" name="a(9:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="XLXN_93(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="LES(63:0)" name="LES(63:0)" />
            <blockpin signalname="Ai(31:0)" name="Data0(31:0)" />
            <blockpin signalname="Bi(31:0)" name="data1(31:0)" />
            <blockpin signalname="Div(31:0)" name="data2(31:0)" />
            <blockpin signalname="XLXN_71(31:0)" name="data3(31:0)" />
            <blockpin signalname="XLXN_70(31:0)" name="data4(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="data5(31:0)" />
            <blockpin signalname="XLXN_43(31:0)" name="data6(31:0)" />
            <blockpin signalname="XLXN_45(31:0)" name="data7(31:0)" />
            <blockpin signalname="XLXN_39(7:0)" name="point_out(7:0)" />
            <blockpin signalname="XLXN_40(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="XLXN_38(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_39(7:0)" name="point(7:0)" />
            <blockpin signalname="XLXN_40(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="SEGCLK" name="seg_clk" />
            <blockpin signalname="XLXN_28" name="seg_clm" />
            <blockpin signalname="SEGDT" name="seg_sout" />
            <blockpin signalname="SEGEN" name="SEG_PEN" />
        </block>
        <block symbolname="clkdiv" name="U8">
            <blockpin signalname="clk200P" name="clk200P" />
            <blockpin signalname="clk200N" name="clk200N" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk100MHz" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="PIO" name="U71">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="Ai(31:0)" name="PData_in(31:0)" />
            <blockpin name="counter_set(1:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin name="GPIOf0(21:0)" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="Seg7_Dev" name="U61">
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="SW_OK(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="3376" type="branch" />
            <wire x2="1840" y1="3376" y2="3376" x1="1424" />
        </branch>
        <instance x="1488" y="3472" name="XLXI_21" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1840" y1="3440" y2="3440" x1="1712" />
        </branch>
        <instance x="1840" y="3168" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="1408" type="instance" />
        </instance>
        <instance x="3616" y="4192" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="3776" type="branch" />
            <wire x2="3616" y1="3776" y2="3776" x1="3248" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="3872" type="branch" />
            <wire x2="3616" y1="3872" y2="3872" x1="3392" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="3616" y1="3968" y2="3968" x1="3456" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="4064" type="branch" />
            <wire x2="3616" y1="4064" y2="4064" x1="3392" />
        </branch>
        <branch name="XLXN_8(31:0)">
            <wire x2="3616" y1="4160" y2="4160" x1="3392" />
        </branch>
        <branch name="LEDCLK">
            <wire x2="4240" y1="3776" y2="3776" x1="4080" />
        </branch>
        <branch name="LEDDT">
            <wire x2="4240" y1="3840" y2="3840" x1="4080" />
        </branch>
        <branch name="LEDCLR">
            <wire x2="4240" y1="3904" y2="3904" x1="4080" />
        </branch>
        <instance x="4672" y="3840" name="XLXI_19" orien="R0" />
        <instance x="4672" y="4208" name="XLXI_20" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4832" y="3856" type="branch" />
            <wire x2="4736" y1="3840" y2="3856" x1="4736" />
            <wire x2="4832" y1="3856" y2="3856" x1="4736" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4832" y="4064" type="branch" />
            <wire x2="4736" y1="4064" y2="4080" x1="4736" />
            <wire x2="4832" y1="4064" y2="4064" x1="4736" />
        </branch>
        <iomarker fontsize="28" x="4240" y="3776" name="LEDCLK" orien="R0" />
        <iomarker fontsize="28" x="4240" y="3840" name="LEDDT" orien="R0" />
        <iomarker fontsize="28" x="4240" y="3904" name="LEDCLR" orien="R0" />
        <instance x="1872" y="2320" name="U2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="544" type="instance" />
        </instance>
        <instance x="2896" y="1808" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="N0,N0,M0,N0,N0,SW(3),Div(27:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2288" type="branch" />
            <wire x2="1632" y1="2288" y2="2288" x1="1424" />
            <wire x2="1824" y1="2288" y2="2288" x1="1632" />
            <wire x2="1824" y1="2288" y2="2400" x1="1824" />
            <wire x2="1824" y1="2400" y2="3248" x1="1824" />
            <wire x2="1840" y1="3248" y2="3248" x1="1824" />
            <wire x2="1872" y1="2400" y2="2400" x1="1824" />
        </branch>
        <branch name="XLXN_43(31:0)">
            <wire x2="1760" y1="3120" y2="3280" x1="1760" />
            <wire x2="1840" y1="3280" y2="3280" x1="1760" />
            <wire x2="2560" y1="3120" y2="3120" x1="1760" />
            <wire x2="2560" y1="2400" y2="2400" x1="2160" />
            <wire x2="2560" y1="2400" y2="3120" x1="2560" />
            <wire x2="2928" y1="2400" y2="2400" x1="2560" />
            <wire x2="2928" y1="2400" y2="2864" x1="2928" />
            <wire x2="3696" y1="2864" y2="2864" x1="2928" />
        </branch>
        <branch name="XLXN_45(31:0)">
            <wire x2="3056" y1="3248" y2="3248" x1="2416" />
            <wire x2="3056" y1="2928" y2="3248" x1="3056" />
            <wire x2="3696" y1="2928" y2="2928" x1="3056" />
        </branch>
        <instance x="3696" y="2960" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="XLXN_40(7:0)">
            <wire x2="3920" y1="1360" y2="1360" x1="3840" />
            <wire x2="3840" y1="1360" y2="1440" x1="3840" />
            <wire x2="4192" y1="1440" y2="1440" x1="3840" />
            <wire x2="4192" y1="1440" y2="2512" x1="4192" />
            <wire x2="4192" y1="2512" y2="2512" x1="4144" />
        </branch>
        <branch name="XLXN_39(7:0)">
            <wire x2="3872" y1="832" y2="1296" x1="3872" />
            <wire x2="3920" y1="1296" y2="1296" x1="3872" />
            <wire x2="4240" y1="832" y2="832" x1="3872" />
            <wire x2="4240" y1="832" y2="864" x1="4240" />
            <wire x2="4240" y1="864" y2="2096" x1="4240" />
            <wire x2="4240" y1="2096" y2="2096" x1="4144" />
        </branch>
        <branch name="XLXN_38(31:0)">
            <wire x2="3920" y1="1232" y2="1232" x1="3856" />
            <wire x2="3856" y1="1232" y2="1504" x1="3856" />
            <wire x2="4208" y1="1504" y2="1504" x1="3856" />
            <wire x2="4208" y1="1504" y2="2928" x1="4208" />
            <wire x2="4208" y1="2928" y2="2928" x1="4144" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3664" y="1424" type="branch" />
            <wire x2="3920" y1="1424" y2="1424" x1="3664" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3664" y="1168" type="branch" />
            <wire x2="3920" y1="1168" y2="1168" x1="3664" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3664" y="1104" type="branch" />
            <wire x2="3920" y1="1104" y2="1104" x1="3664" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3664" y="1040" type="branch" />
            <wire x2="3920" y1="1040" y2="1040" x1="3664" />
        </branch>
        <instance x="1856" y="2096" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk200P">
            <wire x2="1856" y1="1936" y2="1936" x1="1632" />
        </branch>
        <branch name="clk200N">
            <wire x2="1856" y1="2000" y2="2000" x1="1664" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="2064" type="branch" />
            <wire x2="2352" y1="2064" y2="2064" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="1632" y="1936" name="clk200P" orien="R180" />
        <iomarker fontsize="28" x="1664" y="2000" name="clk200N" orien="R180" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="2160" type="branch" />
            <wire x2="1856" y1="2064" y2="2064" x1="1776" />
            <wire x2="1776" y1="2064" y2="2160" x1="1776" />
            <wire x2="1792" y1="2160" y2="2160" x1="1776" />
            <wire x2="2512" y1="2160" y2="2160" x1="1792" />
            <wire x2="3696" y1="2160" y2="2160" x1="2512" />
            <wire x2="2512" y1="1104" y2="1104" x1="2064" />
            <wire x2="2512" y1="1104" y2="2160" x1="2512" />
        </branch>
        <branch name="XLXN_69(31:0)">
            <wire x2="3696" y1="2800" y2="2800" x1="3408" />
        </branch>
        <branch name="XLXN_70(31:0)">
            <wire x2="3696" y1="2736" y2="2736" x1="3392" />
        </branch>
        <branch name="XLXN_71(31:0)">
            <wire x2="3696" y1="2672" y2="2672" x1="3392" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="2608" type="branch" />
            <wire x2="3696" y1="2608" y2="2608" x1="3392" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3536" y="2544" type="branch" />
            <wire x2="3488" y1="1680" y2="1680" x1="3280" />
            <wire x2="3488" y1="1680" y2="2544" x1="3488" />
            <wire x2="3536" y1="2544" y2="2544" x1="3488" />
            <wire x2="3696" y1="2544" y2="2544" x1="3536" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="2480" type="branch" />
            <wire x2="3472" y1="1600" y2="1600" x1="3280" />
            <wire x2="3472" y1="1600" y2="2480" x1="3472" />
            <wire x2="3552" y1="2480" y2="2480" x1="3472" />
            <wire x2="3696" y1="2480" y2="2480" x1="3552" />
        </branch>
        <branch name="LES(63:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="2416" type="branch" />
            <wire x2="3328" y1="2416" y2="2416" x1="3280" />
            <wire x2="3696" y1="2416" y2="2416" x1="3328" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="2352" type="branch" />
            <wire x2="3696" y1="2352" y2="2352" x1="3104" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="2224" type="branch" />
            <wire x2="3696" y1="2224" y2="2224" x1="3568" />
        </branch>
        <instance x="1680" y="1456" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="SW_OK(15:0)">
            <wire x2="2224" y1="1424" y2="1424" x1="2064" />
            <wire x2="2224" y1="1424" y2="1808" x1="2224" />
            <wire x2="2320" y1="1808" y2="1808" x1="2224" />
            <wire x2="2320" y1="1808" y2="1888" x1="2320" />
            <wire x2="2320" y1="1888" y2="1920" x1="2320" />
            <wire x2="2320" y1="1680" y2="1712" x1="2320" />
            <wire x2="2320" y1="1712" y2="1808" x1="2320" />
        </branch>
        <bustap x2="2416" y1="1888" y2="1888" x1="2320" />
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3344" y="2288" type="branch" />
            <wire x2="3328" y1="1888" y2="1888" x1="2416" />
            <wire x2="3328" y1="1888" y2="2288" x1="3328" />
            <wire x2="3344" y1="2288" y2="2288" x1="3328" />
            <wire x2="3696" y1="2288" y2="2288" x1="3344" />
        </branch>
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="768" type="branch" />
            <wire x2="1440" y1="768" y2="976" x1="1440" />
            <wire x2="1680" y1="976" y2="976" x1="1440" />
            <wire x2="1440" y1="976" y2="2112" x1="1440" />
            <wire x2="2368" y1="2112" y2="2112" x1="1440" />
            <wire x2="3040" y1="768" y2="768" x1="1440" />
            <wire x2="3040" y1="768" y2="976" x1="3040" />
            <wire x2="3920" y1="976" y2="976" x1="3040" />
            <wire x2="2368" y1="1936" y2="1936" x1="2240" />
            <wire x2="2960" y1="1936" y2="1936" x1="2368" />
            <wire x2="2960" y1="1936" y2="2096" x1="2960" />
            <wire x2="3696" y1="2096" y2="2096" x1="2960" />
            <wire x2="2368" y1="1936" y2="2112" x1="2368" />
            <wire x2="2816" y1="976" y2="1520" x1="2816" />
            <wire x2="2896" y1="1520" y2="1520" x1="2816" />
            <wire x2="3040" y1="976" y2="976" x1="2816" />
        </branch>
        <branch name="RSTN">
            <wire x2="1680" y1="1088" y2="1088" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1088" name="RSTN" orien="R180" />
        <branch name="readn">
            <wire x2="1680" y1="1200" y2="1200" x1="1600" />
            <wire x2="1600" y1="1200" y2="1856" x1="1600" />
            <wire x2="3440" y1="1856" y2="1856" x1="1600" />
            <wire x2="3440" y1="1520" y2="1520" x1="3280" />
            <wire x2="3536" y1="1520" y2="1520" x1="3440" />
            <wire x2="3440" y1="1520" y2="1856" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="3536" y="1520" name="readn" orien="R0" />
        <branch name="BTN_y(3:0)">
            <wire x2="1680" y1="1312" y2="1312" x1="1392" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="1680" y1="1424" y2="1424" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1312" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1392" y="1424" name="SW(15:0)" orien="R180" />
        <branch name="RDY">
            <wire x2="2736" y1="976" y2="976" x1="2064" />
            <wire x2="2736" y1="976" y2="1584" x1="2736" />
            <wire x2="2896" y1="1584" y2="1584" x1="2736" />
            <wire x2="2736" y1="1584" y2="1584" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1584" name="RDY" orien="R180" />
        <branch name="CR">
            <wire x2="2208" y1="1040" y2="1040" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2208" y="1040" name="CR" orien="R0" />
        <branch name="BTN_x(4:0)">
            <wire x2="2240" y1="1168" y2="1168" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1168" name="BTN_x(4:0)" orien="R0" />
        <branch name="XLXN_93(4:0)">
            <wire x2="2480" y1="1232" y2="1232" x1="2064" />
            <wire x2="2480" y1="1232" y2="1776" x1="2480" />
            <wire x2="2896" y1="1776" y2="1776" x1="2480" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1296" type="branch" />
            <wire x2="2224" y1="1296" y2="1296" x1="2064" />
        </branch>
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1648" type="branch" />
            <wire x2="2320" y1="1360" y2="1360" x1="2288" />
            <wire x2="2320" y1="1360" y2="1648" x1="2320" />
            <wire x2="2384" y1="1648" y2="1648" x1="2320" />
            <wire x2="2896" y1="1648" y2="1648" x1="2384" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="2192" y1="1360" y2="1360" x1="2064" />
        </branch>
        <bustap x2="2288" y1="1360" y2="1360" x1="2192" />
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="1760" type="branch" />
            <wire x2="3392" y1="1760" y2="1760" x1="3280" />
        </branch>
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1712" type="branch" />
            <wire x2="2448" y1="1712" y2="1712" x1="2416" />
            <wire x2="2784" y1="1712" y2="1712" x1="2448" />
            <wire x2="2896" y1="1712" y2="1712" x1="2784" />
        </branch>
        <bustap x2="2416" y1="1712" y2="1712" x1="2320" />
        <text style="fontsize:32;fontname:Arial" x="1496" y="5012">LES=N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(7:0),blink(7:0)</text>
        <instance x="3920" y="1456" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="62" y="535" type="instance" />
        </instance>
        <branch name="SEGEN">
            <wire x2="4656" y1="1408" y2="1408" x1="4304" />
        </branch>
        <iomarker fontsize="28" x="4656" y="1408" name="SEGEN" orien="R0" />
        <branch name="SEGDT">
            <wire x2="4656" y1="1264" y2="1264" x1="4304" />
        </branch>
        <iomarker fontsize="28" x="4656" y="1264" name="SEGDT" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="4592" y1="1120" y2="1120" x1="4304" />
        </branch>
        <branch name="SEGCLK">
            <wire x2="4656" y1="976" y2="976" x1="4304" />
        </branch>
        <iomarker fontsize="28" x="4656" y="976" name="SEGCLK" orien="R0" />
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="1744" y="1280" name="U71" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="528" type="branch" />
            <wire x2="1168" y1="528" y2="528" x1="640" />
        </branch>
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="592" type="branch" />
            <wire x2="1168" y1="592" y2="592" x1="624" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="848" type="branch" />
            <wire x2="1168" y1="848" y2="848" x1="624" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="656" type="branch" />
            <wire x2="1168" y1="656" y2="656" x1="624" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="720" type="branch" />
            <wire x2="1168" y1="720" y2="720" x1="608" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="784" type="branch" />
            <wire x2="1168" y1="784" y2="784" x1="608" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1648" y1="528" y2="528" x1="1584" />
            <wire x2="1648" y1="384" y2="528" x1="1648" />
            <wire x2="2368" y1="384" y2="384" x1="1648" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="1648" y1="848" y2="848" x1="1584" />
            <wire x2="1648" y1="848" y2="944" x1="1648" />
            <wire x2="2336" y1="944" y2="944" x1="1648" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1120" type="branch" />
            <wire x2="1744" y1="1120" y2="1120" x1="1584" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1184" type="branch" />
            <wire x2="1744" y1="1184" y2="1184" x1="1584" />
        </branch>
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1056" type="branch" />
            <wire x2="1744" y1="1056" y2="1056" x1="1216" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1248" type="branch" />
            <wire x2="1744" y1="1248" y2="1248" x1="1216" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1152" type="branch" />
            <wire x2="1168" y1="1152" y2="1152" x1="1040" />
        </branch>
        <instance x="1168" y="1184" name="XLXI_42" orien="R0" />
        <branch name="Buzzer">
            <wire x2="1424" y1="1152" y2="1152" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1152" name="Buzzer" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="2496" y1="1152" y2="1152" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1152" name="LED(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2368" y="384" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2336" y="944" name="SEGMENT(7:0)" orien="R0" />
        <instance x="1168" y="880" name="U61" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
    </sheet>
</drawing>