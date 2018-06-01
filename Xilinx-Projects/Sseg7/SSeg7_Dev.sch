<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="Start" />
        <signal name="flash" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="XLXN_10(63:0)" />
        <signal name="XLXN_11(63:0)" />
        <signal name="SW0" />
        <signal name="SEGMENT(63:0)" />
        <signal name="seg_clk" />
        <signal name="seg_clm" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="Hexs(31:0),Hexs(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="SW0" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_clm" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <blockdef name="P2S">
            <timestamp>2018-5-26T1:41:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="HexTo8SEG">
            <timestamp>2018-5-26T1:41:15</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2018-5-26T1:41:20</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="SSeg_map">
            <timestamp>2018-5-26T1:41:30</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="P2S" name="M2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="SEGMENT(63:0)" name="P_Data(63:0)" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="seg_clm" name="s_clrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="SEG_PEN" name="EN" />
        </block>
        <block symbolname="MUX2T1_64" name="MUXSH2M">
            <blockpin signalname="SW0" name="sel" />
            <blockpin signalname="XLXN_10(63:0)" name="a(63:0)" />
            <blockpin signalname="XLXN_11(63:0)" name="b(63:0)" />
            <blockpin signalname="SEGMENT(63:0)" name="o(63:0)" />
        </block>
        <block symbolname="HexTo8SEG" name="SM1">
            <blockpin signalname="flash" name="flash" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="XLXN_10(63:0)" name="SEG_TXT(63:0)" />
        </block>
        <block symbolname="SSeg_map" name="SM3">
            <blockpin signalname="Hexs(31:0),Hexs(31:0)" name="Disp_num(63:0)" />
            <blockpin signalname="XLXN_11(63:0)" name="Seg_map(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2288" y="720" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2288" y="1456" name="MUXSH2M" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1568" y="1280" name="SM1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk">
            <wire x2="2288" y1="496" y2="496" x1="1344" />
        </branch>
        <branch name="rst">
            <wire x2="2288" y1="560" y2="560" x1="1344" />
        </branch>
        <branch name="Start">
            <wire x2="2288" y1="624" y2="624" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1344" y="560" name="rst" orien="R180" />
        <iomarker fontsize="28" x="1344" y="624" name="Start" orien="R180" />
        <branch name="flash">
            <wire x2="1568" y1="1056" y2="1056" x1="1360" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="1568" y1="1184" y2="1184" x1="1360" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="1568" y1="1248" y2="1248" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1056" name="flash" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1184" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1248" name="LES(7:0)" orien="R180" />
        <branch name="Hexs(31:0)">
            <wire x2="1552" y1="1120" y2="1120" x1="1360" />
            <wire x2="1568" y1="1120" y2="1120" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1120" name="Hexs(31:0)" orien="R180" />
        <branch name="XLXN_10(63:0)">
            <wire x2="2144" y1="1056" y2="1056" x1="2000" />
            <wire x2="2144" y1="1056" y2="1360" x1="2144" />
            <wire x2="2288" y1="1360" y2="1360" x1="2144" />
        </branch>
        <branch name="XLXN_11(63:0)">
            <wire x2="2160" y1="1600" y2="1600" x1="2032" />
            <wire x2="2272" y1="1424" y2="1424" x1="2160" />
            <wire x2="2288" y1="1424" y2="1424" x1="2272" />
            <wire x2="2160" y1="1424" y2="1600" x1="2160" />
        </branch>
        <branch name="SW0">
            <wire x2="1360" y1="864" y2="864" x1="1344" />
            <wire x2="2272" y1="864" y2="864" x1="1360" />
            <wire x2="2272" y1="864" y2="1296" x1="2272" />
            <wire x2="2288" y1="1296" y2="1296" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="1344" y="864" name="SW0" orien="R180" />
        <branch name="SEGMENT(63:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1152" type="branch" />
            <wire x2="2288" y1="688" y2="688" x1="2208" />
            <wire x2="2208" y1="688" y2="784" x1="2208" />
            <wire x2="2736" y1="784" y2="784" x1="2208" />
            <wire x2="2736" y1="784" y2="1152" x1="2736" />
            <wire x2="2736" y1="1152" y2="1296" x1="2736" />
            <wire x2="2736" y1="1296" y2="1296" x1="2672" />
        </branch>
        <branch name="seg_clk">
            <wire x2="2704" y1="496" y2="496" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="496" name="seg_clk" orien="R0" />
        <branch name="seg_clm">
            <wire x2="2704" y1="560" y2="560" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="560" name="seg_clm" orien="R0" />
        <branch name="seg_sout">
            <wire x2="2704" y1="624" y2="624" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="624" name="seg_sout" orien="R0" />
        <branch name="SEG_PEN">
            <wire x2="2704" y1="688" y2="688" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="688" name="SEG_PEN" orien="R0" />
        <instance x="1568" y="1632" name="SM3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Hexs(31:0),Hexs(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1600" type="branch" />
            <wire x2="1568" y1="1600" y2="1600" x1="1360" />
        </branch>
    </sheet>
</drawing>