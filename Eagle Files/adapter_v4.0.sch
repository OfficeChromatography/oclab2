<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-hirose">
<description>&lt;b&gt;Hirose Connectors&lt;/b&gt;&lt;p&gt;
www.hirose.co.jp&lt;p&gt;
Include : &lt;br&gt;
con-hirose-df12d(3.0)60dp0.5v80.lbr from Bob Starr &amp;lt;rtzaudio@mindspring.com&amp;gt;&lt;br&gt;
con-hirose.lbr from Bob Starr &amp;lt;rtzaudio@mindspring.com&amp;gt;&lt;br&gt;</description>
<packages>
<package name="FH12-16S-1SV">
<description>&lt;b&gt;1mm Pitch Connectors For FPC/FFC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href= "http://www.hirose.co.jp/cataloge_hp/e58605370.pdf"&gt;Data sheet&lt;/a&gt;&lt;p&gt;</description>
<wire x1="8.937" y1="2.324" x2="9.0532" y2="2.324" width="0.1016" layer="51"/>
<wire x1="9.0532" y1="2.324" x2="9.0532" y2="1.4276" width="0.1016" layer="51"/>
<wire x1="9.0532" y1="1.4276" x2="9.8002" y2="1.4276" width="0.1016" layer="51"/>
<wire x1="9.8002" y1="1.4276" x2="9.8002" y2="1.1288" width="0.1016" layer="21"/>
<wire x1="9.8002" y1="1.1288" x2="9.8998" y2="1.1288" width="0.1016" layer="21"/>
<wire x1="9.8998" y1="1.1288" x2="9.8998" y2="-0.7304" width="0.1016" layer="21"/>
<wire x1="9.8998" y1="-0.7304" x2="9.3022" y2="-0.7304" width="0.1016" layer="51"/>
<wire x1="9.3022" y1="-0.7304" x2="9.3022" y2="-1.1952" width="0.1016" layer="51"/>
<wire x1="9.3022" y1="-1.1952" x2="9.1528" y2="-1.1952" width="0.1016" layer="51"/>
<wire x1="9.1528" y1="-1.1952" x2="9.1528" y2="-1.2616" width="0.1016" layer="51"/>
<wire x1="9.1528" y1="-1.2616" x2="8.3892" y2="-1.2616" width="0.1016" layer="51"/>
<wire x1="8.3892" y1="-1.2616" x2="8.3892" y2="-1.1288" width="0.1016" layer="51"/>
<wire x1="8.9204" y1="-1.3114" x2="8.9204" y2="-1.411" width="0.1016" layer="51"/>
<wire x1="8.9204" y1="-1.411" x2="9.0698" y2="-1.411" width="0.1016" layer="51"/>
<wire x1="9.0698" y1="-1.411" x2="9.0698" y2="-1.3114" width="0.1016" layer="51"/>
<wire x1="8.937" y1="2.324" x2="8.937" y2="1.6932" width="0.1016" layer="51"/>
<wire x1="8.937" y1="1.6932" x2="8.8208" y2="1.743" width="0.1016" layer="51"/>
<wire x1="8.3892" y1="-1.1288" x2="4.0018" y2="-1.1288" width="0.1016" layer="51"/>
<wire x1="4.0018" y1="-1.1288" x2="4.0018" y2="-1.2782" width="0.1016" layer="51"/>
<wire x1="4.0018" y1="-1.2782" x2="-4.0018" y2="-1.2782" width="0.1016" layer="51"/>
<wire x1="-4.0018" y1="-1.2782" x2="-4.0018" y2="0.6142" width="0.1016" layer="51"/>
<wire x1="-4" y1="0.6142" x2="4" y2="0.6142" width="0.1016" layer="51"/>
<wire x1="4.0018" y1="0.6142" x2="4.0018" y2="-1.1288" width="0.1016" layer="51"/>
<wire x1="-7.8726" y1="-1.1288" x2="-7.8726" y2="-1.2284" width="0.1016" layer="51"/>
<wire x1="-7.8726" y1="-1.2284" x2="-9.1528" y2="-1.2284" width="0.1016" layer="51"/>
<wire x1="-9.1528" y1="-1.2284" x2="-9.1528" y2="-1.1454" width="0.1016" layer="51"/>
<wire x1="-9.1528" y1="-1.1454" x2="-9.2856" y2="-1.1454" width="0.1016" layer="51"/>
<wire x1="-9.2856" y1="-1.1454" x2="-9.2856" y2="-0.6972" width="0.1016" layer="51"/>
<wire x1="-9.2856" y1="-0.6972" x2="-9.8998" y2="-0.6972" width="0.1016" layer="51"/>
<wire x1="-9.8998" y1="-0.6972" x2="-9.8998" y2="1.1786" width="0.1016" layer="21"/>
<wire x1="-9.8998" y1="1.1786" x2="-9.8002" y2="1.1786" width="0.1016" layer="21"/>
<wire x1="-9.8002" y1="1.1786" x2="-9.8002" y2="1.4774" width="0.1016" layer="21"/>
<wire x1="-9.8002" y1="1.4774" x2="-9.0532" y2="1.4774" width="0.1016" layer="51"/>
<wire x1="-9.0532" y1="1.4774" x2="-9.0532" y2="2.3904" width="0.1016" layer="51"/>
<wire x1="-9.0532" y1="2.3904" x2="-8.9204" y2="2.3904" width="0.1016" layer="51"/>
<wire x1="-8.9204" y1="2.3904" x2="-8.9204" y2="1.743" width="0.1016" layer="51"/>
<wire x1="-8.8042" y1="1.7098" x2="-8.8042" y2="1.0458" width="0.1016" layer="51"/>
<wire x1="-8.8042" y1="1.0458" x2="-8.688" y2="1.0458" width="0.1016" layer="51"/>
<wire x1="-8.688" y1="1.0458" x2="-8.688" y2="1.2784" width="0.1016" layer="51"/>
<wire x1="-8.688" y1="1.2784" x2="8.688" y2="1.2784" width="0.1016" layer="51"/>
<wire x1="8.688" y1="1.2784" x2="8.688" y2="0.9794" width="0.1016" layer="51"/>
<wire x1="8.688" y1="0.9794" x2="8.8208" y2="0.9794" width="0.1016" layer="51"/>
<wire x1="8.8208" y1="0.9794" x2="8.8208" y2="1.743" width="0.1016" layer="51"/>
<wire x1="8.8208" y1="1.743" x2="-8.9204" y2="1.743" width="0.1016" layer="51"/>
<wire x1="-4.0082" y1="-1.1288" x2="-7.8726" y2="-1.1288" width="0.1016" layer="51"/>
<wire x1="-9.0532" y1="-1.2782" x2="-9.0532" y2="-1.3778" width="0.1016" layer="51"/>
<wire x1="-9.0532" y1="-1.3778" x2="-8.9038" y2="-1.3778" width="0.1016" layer="51"/>
<wire x1="-8.9038" y1="-1.3778" x2="-8.9038" y2="-1.2782" width="0.1016" layer="51"/>
<smd name="1" x="-7.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="2" x="-6.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="3" x="-5.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="4" x="-4.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="5" x="-3.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="6" x="-2.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="7" x="-1.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="8" x="-0.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="9" x="0.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="10" x="1.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="11" x="2.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="12" x="3.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="13" x="4.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="14" x="5.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="15" x="6.5" y="-1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<smd name="16" x="7.5" y="1.5" dx="0.6" dy="1.5" layer="1" stop="no" cream="no"/>
<text x="-10.182" y="-2.0418" size="1.016" layer="21" font="vector" rot="SR0">1</text>
<text x="-9.125" y="3.175" size="1.27" layer="25">&gt;NAME</text>
<text x="-9.125" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7.85" y1="-2.3" x2="-7.15" y2="-0.7" layer="29"/>
<rectangle x1="-7.75" y1="-2.2" x2="-7.25" y2="-0.8" layer="31"/>
<rectangle x1="-6.85" y1="0.7" x2="-6.15" y2="2.3" layer="29"/>
<rectangle x1="-6.75" y1="0.8" x2="-6.25" y2="2.2" layer="31"/>
<rectangle x1="-5.85" y1="-2.3" x2="-5.15" y2="-0.7" layer="29"/>
<rectangle x1="-5.75" y1="-2.2" x2="-5.25" y2="-0.8" layer="31"/>
<rectangle x1="-4.85" y1="0.7" x2="-4.15" y2="2.3" layer="29"/>
<rectangle x1="-4.75" y1="0.8" x2="-4.25" y2="2.2" layer="31"/>
<rectangle x1="-3.85" y1="-2.3" x2="-3.15" y2="-0.7" layer="29"/>
<rectangle x1="-3.75" y1="-2.2" x2="-3.25" y2="-0.8" layer="31"/>
<rectangle x1="-2.85" y1="0.7" x2="-2.15" y2="2.3" layer="29"/>
<rectangle x1="-2.75" y1="0.8" x2="-2.25" y2="2.2" layer="31"/>
<rectangle x1="-1.85" y1="-2.3" x2="-1.15" y2="-0.7" layer="29"/>
<rectangle x1="-1.75" y1="-2.2" x2="-1.25" y2="-0.8" layer="31"/>
<rectangle x1="-0.85" y1="0.7" x2="-0.15" y2="2.3" layer="29"/>
<rectangle x1="-0.75" y1="0.8" x2="-0.25" y2="2.2" layer="31"/>
<rectangle x1="0.15" y1="-2.3" x2="0.85" y2="-0.7" layer="29"/>
<rectangle x1="0.25" y1="-2.2" x2="0.75" y2="-0.8" layer="31"/>
<rectangle x1="1.15" y1="0.7" x2="1.85" y2="2.3" layer="29"/>
<rectangle x1="1.25" y1="0.8" x2="1.75" y2="2.2" layer="31"/>
<rectangle x1="2.15" y1="-2.3" x2="2.85" y2="-0.7" layer="29"/>
<rectangle x1="2.25" y1="-2.2" x2="2.75" y2="-0.8" layer="31"/>
<rectangle x1="3.15" y1="0.7" x2="3.85" y2="2.3" layer="29"/>
<rectangle x1="3.25" y1="0.8" x2="3.75" y2="2.2" layer="31"/>
<rectangle x1="4.15" y1="-2.3" x2="4.85" y2="-0.7" layer="29"/>
<rectangle x1="4.25" y1="-2.2" x2="4.75" y2="-0.8" layer="31"/>
<rectangle x1="5.15" y1="0.7" x2="5.85" y2="2.3" layer="29"/>
<rectangle x1="5.25" y1="0.8" x2="5.75" y2="2.2" layer="31"/>
<rectangle x1="6.15" y1="-2.3" x2="6.85" y2="-0.7" layer="29"/>
<rectangle x1="6.25" y1="-2.2" x2="6.75" y2="-0.8" layer="31"/>
<rectangle x1="7.15" y1="0.7" x2="7.85" y2="2.3" layer="29"/>
<rectangle x1="7.25" y1="0.8" x2="7.75" y2="2.2" layer="31"/>
<rectangle x1="-9.4" y1="0.45" x2="-8.6" y2="2.25" layer="1"/>
<rectangle x1="-9.4" y1="-2.25" x2="-8.6" y2="-0.45" layer="1"/>
<rectangle x1="-9.475" y1="0.375" x2="-8.525" y2="2.325" layer="29"/>
<rectangle x1="-9.35" y1="0.5" x2="-8.65" y2="2.2" layer="31"/>
<rectangle x1="-9.475" y1="-2.325" x2="-8.525" y2="-0.375" layer="29"/>
<rectangle x1="-9.35" y1="-2.2" x2="-8.65" y2="-0.5" layer="31"/>
<rectangle x1="8.6" y1="-2.25" x2="9.4" y2="-0.45" layer="1" rot="R180"/>
<rectangle x1="8.6" y1="0.45" x2="9.4" y2="2.25" layer="1" rot="R180"/>
<rectangle x1="8.525" y1="-2.325" x2="9.475" y2="-0.375" layer="29" rot="R180"/>
<rectangle x1="8.65" y1="-2.2" x2="9.35" y2="-0.5" layer="31" rot="R180"/>
<rectangle x1="8.525" y1="0.375" x2="9.475" y2="2.325" layer="29" rot="R180"/>
<rectangle x1="8.65" y1="0.5" x2="9.35" y2="2.2" layer="31" rot="R180"/>
<rectangle x1="7.3746" y1="0.7802" x2="7.607" y2="1.4774" layer="51"/>
<rectangle x1="5.3746" y1="0.7802" x2="5.607" y2="1.4774" layer="51"/>
<rectangle x1="3.3746" y1="0.7802" x2="3.607" y2="1.4774" layer="51"/>
<rectangle x1="1.3746" y1="0.7802" x2="1.607" y2="1.4774" layer="51"/>
<rectangle x1="-0.6254" y1="0.7802" x2="-0.393" y2="1.4774" layer="51"/>
<rectangle x1="-2.6254" y1="0.7802" x2="-2.393" y2="1.4774" layer="51"/>
<rectangle x1="-4.6254" y1="0.7802" x2="-4.393" y2="1.4774" layer="51"/>
<rectangle x1="-6.6254" y1="0.7802" x2="-6.393" y2="1.4774" layer="51"/>
<rectangle x1="6.393" y1="-1.4774" x2="6.6254" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="4.393" y1="-1.4774" x2="4.6254" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="2.393" y1="-1.4774" x2="2.6254" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="0.393" y1="-1.4774" x2="0.6254" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="-1.607" y1="-1.4774" x2="-1.3746" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="-3.607" y1="-1.4774" x2="-3.3746" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="-5.607" y1="-1.4774" x2="-5.3746" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="-7.607" y1="-1.4774" x2="-7.3746" y2="-0.7802" layer="51" rot="R180"/>
<rectangle x1="7.4078" y1="1.7264" x2="7.5738" y2="2.2244" layer="51"/>
<rectangle x1="5.4078" y1="1.7264" x2="5.5738" y2="2.2244" layer="51"/>
<rectangle x1="3.4078" y1="1.7264" x2="3.5738" y2="2.2244" layer="51"/>
<rectangle x1="1.4078" y1="1.7264" x2="1.5738" y2="2.2244" layer="51"/>
<rectangle x1="-0.5922" y1="1.7264" x2="-0.4262" y2="2.2244" layer="51"/>
<rectangle x1="-2.5922" y1="1.7264" x2="-2.4262" y2="2.2244" layer="51"/>
<rectangle x1="-4.5922" y1="1.7264" x2="-4.4262" y2="2.2244" layer="51"/>
<rectangle x1="-6.5922" y1="1.7264" x2="-6.4262" y2="2.2244" layer="51"/>
</package>
<package name="FH12-16S-1SH">
<description>&lt;b&gt;1mm Pitch Connectors For FPC/FFC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href= "http://www.hirose.co.jp/cataloge_hp/e58605370.pdf"&gt;Data sheet&lt;/a&gt;&lt;p&gt;</description>
<wire x1="-9.7" y1="0.5" x2="-10.2" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-10.2" y1="0.5" x2="-10.2" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="-10.2" y1="-0.5" x2="-9.7" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="-9.7" y1="-0.5" x2="-9.7" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-9.7" y1="-1.9" x2="-9.4" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-9.4" y1="-1.9" x2="-9.4" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-9.4" y1="-2.2" x2="-9.7" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-9.7" y1="-2.2" x2="-9.7" y2="-2.9" width="0.2032" layer="21"/>
<wire x1="9.7" y1="-2.9" x2="9.7" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="9.7" y1="-2.2" x2="9.4" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="9.4" y1="-2.2" x2="9.4" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="9.4" y1="-1.9" x2="9.7" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="9.7" y1="-1.9" x2="9.7" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="9.7" y1="-0.5" x2="10.2" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="10.2" y1="-0.5" x2="10.2" y2="0.5" width="0.2032" layer="51"/>
<wire x1="10.2" y1="0.5" x2="9.7" y2="0.5" width="0.2032" layer="51"/>
<wire x1="9.7" y1="0.5" x2="9.7" y2="2.5" width="0.2032" layer="51"/>
<wire x1="9.7" y1="2.5" x2="-9.7" y2="2.5" width="0.2032" layer="51"/>
<wire x1="-9.7" y1="2.5" x2="-9.7" y2="0.5" width="0.2032" layer="51"/>
<wire x1="9.4" y1="-1.9" x2="-9.4" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="9.7" y1="-2.9" x2="-9.7" y2="-2.9" width="0.2032" layer="21"/>
<wire x1="-9.7" y1="2.5" x2="-9.7" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-8" y1="2.5" x2="-9.7" y2="2.5" width="0.2032" layer="21"/>
<wire x1="9.7" y1="1.5" x2="9.7" y2="2.5" width="0.2032" layer="21"/>
<wire x1="9.7" y1="2.5" x2="8" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-9.7" y1="-1.5" x2="-9.7" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="9.7" y1="-1.9" x2="9.7" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-7.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="2" x="-6.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="3" x="-5.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="4" x="-4.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="5" x="-3.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="6" x="-2.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="7" x="-1.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="8" x="-0.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="9" x="0.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="10" x="1.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="11" x="2.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="12" x="3.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="13" x="4.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="14" x="5.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="15" x="6.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<smd name="16" x="7.5" y="3.25" dx="0.3" dy="1.3" layer="1" stop="no" cream="no"/>
<text x="-9.1976" y="4.095" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.9976" y="-0.3258" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7.7" y1="2.55" x2="-7.3" y2="3.95" layer="29"/>
<rectangle x1="-7.625" y1="2.625" x2="-7.375" y2="3.875" layer="31"/>
<rectangle x1="-6.7" y1="2.55" x2="-6.3" y2="3.95" layer="29"/>
<rectangle x1="-6.625" y1="2.625" x2="-6.375" y2="3.875" layer="31"/>
<rectangle x1="-5.7" y1="2.55" x2="-5.3" y2="3.95" layer="29"/>
<rectangle x1="-5.625" y1="2.625" x2="-5.375" y2="3.875" layer="31"/>
<rectangle x1="-4.7" y1="2.55" x2="-4.3" y2="3.95" layer="29"/>
<rectangle x1="-4.625" y1="2.625" x2="-4.375" y2="3.875" layer="31"/>
<rectangle x1="-3.7" y1="2.55" x2="-3.3" y2="3.95" layer="29"/>
<rectangle x1="-3.625" y1="2.625" x2="-3.375" y2="3.875" layer="31"/>
<rectangle x1="-2.7" y1="2.55" x2="-2.3" y2="3.95" layer="29"/>
<rectangle x1="-2.625" y1="2.625" x2="-2.375" y2="3.875" layer="31"/>
<rectangle x1="-1.7" y1="2.55" x2="-1.3" y2="3.95" layer="29"/>
<rectangle x1="-1.625" y1="2.625" x2="-1.375" y2="3.875" layer="31"/>
<rectangle x1="-0.7" y1="2.55" x2="-0.3" y2="3.95" layer="29"/>
<rectangle x1="-0.625" y1="2.625" x2="-0.375" y2="3.875" layer="31"/>
<rectangle x1="0.3" y1="2.55" x2="0.7" y2="3.95" layer="29"/>
<rectangle x1="0.375" y1="2.625" x2="0.625" y2="3.875" layer="31"/>
<rectangle x1="1.3" y1="2.55" x2="1.7" y2="3.95" layer="29"/>
<rectangle x1="1.375" y1="2.625" x2="1.625" y2="3.875" layer="31"/>
<rectangle x1="2.3" y1="2.55" x2="2.7" y2="3.95" layer="29"/>
<rectangle x1="2.375" y1="2.625" x2="2.625" y2="3.875" layer="31"/>
<rectangle x1="3.3" y1="2.55" x2="3.7" y2="3.95" layer="29"/>
<rectangle x1="3.375" y1="2.625" x2="3.625" y2="3.875" layer="31"/>
<rectangle x1="4.3" y1="2.55" x2="4.7" y2="3.95" layer="29"/>
<rectangle x1="4.375" y1="2.625" x2="4.625" y2="3.875" layer="31"/>
<rectangle x1="5.3" y1="2.55" x2="5.7" y2="3.95" layer="29"/>
<rectangle x1="5.375" y1="2.625" x2="5.625" y2="3.875" layer="31"/>
<rectangle x1="6.3" y1="2.55" x2="6.7" y2="3.95" layer="29"/>
<rectangle x1="6.375" y1="2.625" x2="6.625" y2="3.875" layer="31"/>
<rectangle x1="7.3" y1="2.55" x2="7.7" y2="3.95" layer="29"/>
<rectangle x1="7.375" y1="2.625" x2="7.625" y2="3.875" layer="31"/>
<rectangle x1="9" y1="-1.1" x2="10.8" y2="1.1" layer="1" rot="R180"/>
<rectangle x1="8.95" y1="-1.175" x2="10.85" y2="1.175" layer="29" rot="R180"/>
<rectangle x1="9.075" y1="-1.025" x2="10.725" y2="1.025" layer="31" rot="R180"/>
<rectangle x1="-10.8" y1="-1.1" x2="-9" y2="1.1" layer="1" rot="R180"/>
<rectangle x1="-10.85" y1="-1.175" x2="-8.95" y2="1.175" layer="29" rot="R180"/>
<rectangle x1="-10.725" y1="-1.025" x2="-9.075" y2="1.025" layer="31" rot="R180"/>
<rectangle x1="-7.6" y1="2.55" x2="-7.4" y2="3.4" layer="51"/>
<rectangle x1="-6.6" y1="2.55" x2="-6.4" y2="3.4" layer="51"/>
<rectangle x1="-5.6" y1="2.55" x2="-5.4" y2="3.4" layer="51"/>
<rectangle x1="-4.6" y1="2.55" x2="-4.4" y2="3.4" layer="51"/>
<rectangle x1="-3.6" y1="2.55" x2="-3.4" y2="3.4" layer="51"/>
<rectangle x1="-2.6" y1="2.55" x2="-2.4" y2="3.4" layer="51"/>
<rectangle x1="-1.6" y1="2.55" x2="-1.4" y2="3.4" layer="51"/>
<rectangle x1="-0.6" y1="2.55" x2="-0.4" y2="3.4" layer="51"/>
<rectangle x1="0.4" y1="2.55" x2="0.6" y2="3.4" layer="51"/>
<rectangle x1="1.4" y1="2.55" x2="1.6" y2="3.4" layer="51"/>
<rectangle x1="2.4" y1="2.55" x2="2.6" y2="3.4" layer="51"/>
<rectangle x1="3.4" y1="2.55" x2="3.6" y2="3.4" layer="51"/>
<rectangle x1="4.4" y1="2.55" x2="4.6" y2="3.4" layer="51"/>
<rectangle x1="5.4" y1="2.55" x2="5.6" y2="3.4" layer="51"/>
<rectangle x1="6.4" y1="2.55" x2="6.6" y2="3.4" layer="51"/>
<rectangle x1="7.4" y1="2.55" x2="7.6" y2="3.4" layer="51"/>
<polygon width="0.2032" layer="21">
<vertex x="-7.7" y="-2.2"/>
<vertex x="-7.5" y="-2.6"/>
<vertex x="-7.3" y="-2.2"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="PINV">
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.254" x2="1.016" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-0.254" x2="1.27" y2="0.254" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.254" x2="0" y2="0.254" width="0.1524" layer="94"/>
<text x="2.032" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="PIN">
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.254" x2="1.016" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-0.254" x2="1.27" y2="0.254" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.254" x2="0" y2="0.254" width="0.1524" layer="94"/>
<text x="2.032" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FH12-16S-1S" prefix="X">
<description>&lt;b&gt;1mm Pitch Connectors For FPC/FFC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href= "http://www.hirose.co.jp/cataloge_hp/e58605370.pdf"&gt;Data sheet&lt;/a&gt;&lt;p&gt;</description>
<gates>
<gate name="-1" symbol="PINV" x="0" y="17.78"/>
<gate name="-2" symbol="PIN" x="0" y="15.24"/>
<gate name="-3" symbol="PIN" x="0" y="12.7"/>
<gate name="-4" symbol="PIN" x="0" y="10.16"/>
<gate name="-5" symbol="PIN" x="0" y="7.62"/>
<gate name="-6" symbol="PIN" x="0" y="5.08"/>
<gate name="-7" symbol="PIN" x="0" y="2.54"/>
<gate name="-8" symbol="PIN" x="0" y="0"/>
<gate name="-9" symbol="PIN" x="0" y="-2.54"/>
<gate name="-10" symbol="PIN" x="0" y="-5.08"/>
<gate name="-11" symbol="PIN" x="0" y="-7.62"/>
<gate name="-12" symbol="PIN" x="0" y="-10.16"/>
<gate name="-13" symbol="PIN" x="0" y="-12.7"/>
<gate name="-14" symbol="PIN" x="0" y="-15.24"/>
<gate name="-15" symbol="PIN" x="0" y="-17.78"/>
<gate name="-16" symbol="PIN" x="0" y="-20.32"/>
</gates>
<devices>
<device name="V" package="FH12-16S-1SV">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="H" package="FH12-16S-1SH">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-hirose" deviceset="FH12-16S-1S" device="H"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="93.98" y="86.36"/>
<instance part="X1" gate="-2" x="93.98" y="83.82"/>
<instance part="X1" gate="-3" x="93.98" y="81.28"/>
<instance part="X1" gate="-4" x="93.98" y="78.74"/>
<instance part="X1" gate="-5" x="93.98" y="76.2"/>
<instance part="X1" gate="-6" x="93.98" y="73.66"/>
<instance part="X1" gate="-7" x="93.98" y="71.12"/>
<instance part="X1" gate="-8" x="93.98" y="68.58"/>
<instance part="X1" gate="-9" x="93.98" y="66.04"/>
<instance part="X1" gate="-10" x="93.98" y="63.5"/>
<instance part="X1" gate="-11" x="93.98" y="60.96"/>
<instance part="X1" gate="-12" x="93.98" y="58.42"/>
<instance part="X1" gate="-13" x="93.98" y="55.88"/>
<instance part="X1" gate="-14" x="93.98" y="53.34"/>
<instance part="X1" gate="-15" x="93.98" y="50.8"/>
<instance part="X1" gate="-16" x="93.98" y="48.26"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="-16" pin="1"/>
<wire x1="91.44" y1="48.26" x2="68.58" y2="48.26" width="0.1524" layer="91"/>
<wire x1="68.58" y1="48.26" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<pinref part="X1" gate="-3" pin="1"/>
<wire x1="68.58" y1="81.28" x2="91.44" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
