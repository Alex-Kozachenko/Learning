<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="System.IO.Pipelines" FOLDED="false" ID="ID_488585028" CREATED="1685430836763" MODIFIED="1685437471454" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="3.0">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="18" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Problems Solved" FOLDED="true" POSITION="right" ID="ID_1320050715" CREATED="1685432194536" MODIFIED="1685432199531">
<edge COLOR="#7c007c"/>
<node TEXT="Overallocating the buffers" ID="ID_699384335" CREATED="1685432203256" MODIFIED="1685432225517"/>
<node TEXT="????" ID="ID_552940277" CREATED="1685432274220" MODIFIED="1685432276080"/>
</node>
<node TEXT="Pipe" FOLDED="true" POSITION="left" ID="ID_820794547" CREATED="1685432284933" MODIFIED="1685438978555" HGAP_QUANTITY="16.249999932944775 pt" VSHIFT_QUANTITY="-21.749999351799506 pt">
<edge COLOR="#7c7c00"/>
<font NAME="Noto Sans Mono" BOLD="true"/>
<node ID="ID_1680302094" CREATED="1685437378878" MODIFIED="1685438020450"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An Object which is processed
    </p>
    <p>
      by <b>PipeReader</b>&#160;
    </p>
    <p>
      and <b>PipeWriter</b>&#160;
    </p>
    <p>
      in <b>Parallel</b>&#160;async looped threads
    </p>
  </body>
</html>

</richcontent>
<font ITALIC="true"/>
</node>
</node>
<node TEXT="PipeReader" POSITION="left" ID="ID_756233055" CREATED="1685432287301" MODIFIED="1685438977699">
<edge COLOR="#0000ff"/>
<font NAME="Noto Sans Mono" BOLD="true"/>
<node TEXT=".ReadAsync" FOLDED="true" ID="ID_1883498135" CREATED="1685437414208" MODIFIED="1685437975528">
<font NAME="Noto Sans Mono"/>
<node ID="ID_427468251" CREATED="1685438071149" MODIFIED="1685438112239"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <i>( </i>
    </p>
    <p>
      <i>Returns a <b>ReadResult</b>&#160;that contains two important pieces of information: </i>
    </p>
    <p>
      <i>1. The data that was read in the form of <b>ReadOnlySequence&lt;byte&gt;</b>. </i>
    </p>
    <p>
      <i>2. A boolean <b>IsCompleted</b>&#160;that indicates if the end of data (EOF) has been reached. </i>
    </p>
    <p>
      <i>)</i>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT=".AdvanceTo" FOLDED="true" ID="ID_383015831" CREATED="1685437417801" MODIFIED="1685437975528">
<font NAME="Noto Sans Mono"/>
<node TEXT=".IsCompleted" ID="ID_224700657" CREATED="1685437436225" MODIFIED="1685437991007">
<font NAME="Noto Sans Mono"/>
</node>
</node>
<node TEXT=".CompleteAsync" FOLDED="true" ID="ID_1788540441" CREATED="1685438185572" MODIFIED="1685438214761">
<font NAME="Roboto Mono"/>
<node TEXT="(lets the underlying Pipe release the memory it allocated)" ID="ID_1118303083" CREATED="1685438190244" MODIFIED="1685438196381">
<font ITALIC="true"/>
</node>
</node>
</node>
<node TEXT="PipeWriter" POSITION="left" ID="ID_505650590" CREATED="1685432291614" MODIFIED="1685438977283">
<edge COLOR="#00ff00"/>
<font NAME="Noto Sans Mono" BOLD="true"/>
<node TEXT=".Advance" FOLDED="true" ID="ID_51041726" CREATED="1685433077365" MODIFIED="1685437975527">
<font NAME="Noto Sans Mono"/>
<node TEXT="(tells the PipeWriter how much data was written to the buffer)" ID="ID_1242200618" CREATED="1685437900788" MODIFIED="1685438014027">
<font ITALIC="true"/>
</node>
</node>
<node TEXT=".GetMemory" FOLDED="true" ID="ID_26745198" CREATED="1685433160147" MODIFIED="1685437975527">
<font NAME="Noto Sans Mono"/>
<node TEXT="(get memory from the underlying writer)" ID="ID_1244416876" CREATED="1685437864218" MODIFIED="1685438014031">
<font ITALIC="true"/>
</node>
</node>
<node TEXT=".CompleteAsync" FOLDED="true" ID="ID_156922803" CREATED="1685433342191" MODIFIED="1685437975516">
<font NAME="Noto Sans Mono"/>
<node ID="ID_853069568" CREATED="1685438175940" MODIFIED="1685438180312"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <i>(lets the underlying Pipe release the memory it allocated)</i>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT=".FlushAsync" FOLDED="true" ID="ID_1856413117" CREATED="1685433290291" MODIFIED="1685438903695">
<font NAME="Noto Sans Mono"/>
<node TEXT=".IsCompleted" ID="ID_1807052458" CREATED="1685433321373" MODIFIED="1685437991003">
<font NAME="Noto Sans Mono"/>
</node>
<node TEXT="(makes the data available to the PipeReader)" ID="ID_1822233682" CREATED="1685437922220" MODIFIED="1685438014032">
<font ITALIC="true"/>
</node>
<node ID="ID_1822418585" CREATED="1685438636167" MODIFIED="1685438715481"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <i>(Returns an <u>incomplete</u>&#160;<b>ValueTask&lt;FlushResult&gt;</b>&#160; </i>
    </p>
    <p>
      <i>when the amount of data in the <b>Pipe</b>&#160;crosses <b>PauseWriterThreshold</b>.)</i>
    </p>
  </body>
</html>

</richcontent>
</node>
<node ID="ID_1534334030" CREATED="1685438688908" MODIFIED="1685438704295"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (<u>Completes</u>&#160;<b>ValueTask&lt;FlushResult&gt;</b>&#160;
    </p>
    <p>
      when it becomes lower than <b>ResumeWriterThreshold</b>.)
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="PipeOptions" FOLDED="true" POSITION="right" ID="ID_1331326854" CREATED="1685438411145" MODIFIED="1685438976155">
<edge COLOR="#ff00ff"/>
<font BOLD="true"/>
<node TEXT="PauseWriterThreshold" FOLDED="true" ID="ID_50792021" CREATED="1685438417178" MODIFIED="1685438436182">
<node TEXT="(Determines how much data should be buffered before calls to FlushAsync pause)" ID="ID_1568591012" CREATED="1685438457404" MODIFIED="1685438461891">
<font ITALIC="true"/>
</node>
</node>
<node TEXT="ResumeWriterThreshold" FOLDED="true" ID="ID_1009261040" CREATED="1685438440579" MODIFIED="1685438448966">
<node TEXT="(Determines how much data the reader has to observe before calls to PipeWriter.FlushAsync resume.)" ID="ID_339991081" CREATED="1685438474038" MODIFIED="1685438480470">
<font ITALIC="true"/>
</node>
</node>
</node>
<node TEXT="PipeScheduler" POSITION="right" ID="ID_1696979907" CREATED="1685438983091" MODIFIED="1685438990548">
<edge COLOR="#00007c"/>
<font BOLD="true"/>
<node TEXT="Controls over where async callbacks run" ID="ID_562342157" CREATED="1685438990843" MODIFIED="1685439009087">
<node TEXT="TaskScheduler" ID="ID_1585765564" CREATED="1685439009717" MODIFIED="1685439014703">
<node TEXT="Used if SyncContext is unavailable" ID="ID_1076500990" CREATED="1685439073128" MODIFIED="1685439088076"/>
</node>
<node TEXT="SyncContext" ID="ID_1893018529" CREATED="1685439015726" MODIFIED="1685439020167">
<node TEXT="Current one is used" ID="ID_1243233616" CREATED="1685439066912" MODIFIED="1685439072212"/>
</node>
</node>
</node>
</node>
</map>
