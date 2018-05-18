<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sel" />
        <signal name="a" />
        <signal name="XLXN_3" />
        <signal name="b" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="o" />
        <port polarity="Input" name="sel" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Output" name="o" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="sel" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="sel" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="848" name="XLXI_4" orien="R0" />
        <instance x="576" y="1152" name="XLXI_5" orien="R0" />
        <instance x="192" y="1056" name="XLXI_6" orien="R0" />
        <instance x="928" y="1008" name="XLXI_7" orien="R0" />
        <branch name="sel">
            <wire x2="192" y1="736" y2="736" x1="112" />
            <wire x2="112" y1="736" y2="1024" x1="112" />
            <wire x2="192" y1="1024" y2="1024" x1="112" />
            <wire x2="192" y1="720" y2="720" x1="160" />
            <wire x2="576" y1="720" y2="720" x1="192" />
            <wire x2="192" y1="720" y2="736" x1="192" />
        </branch>
        <branch name="a">
            <wire x2="576" y1="784" y2="784" x1="160" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="576" y1="1024" y2="1024" x1="416" />
        </branch>
        <branch name="b">
            <wire x2="576" y1="1088" y2="1088" x1="160" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="880" y1="752" y2="752" x1="832" />
            <wire x2="880" y1="752" y2="880" x1="880" />
            <wire x2="928" y1="880" y2="880" x1="880" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="880" y1="1056" y2="1056" x1="832" />
            <wire x2="880" y1="944" y2="1056" x1="880" />
            <wire x2="928" y1="944" y2="944" x1="880" />
        </branch>
        <iomarker fontsize="28" x="160" y="720" name="sel" orien="R180" />
        <iomarker fontsize="28" x="160" y="784" name="a" orien="R180" />
        <iomarker fontsize="28" x="160" y="1088" name="b" orien="R180" />
        <branch name="o">
            <wire x2="1216" y1="912" y2="912" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="912" name="o" orien="R0" />
    </sheet>
</drawing>