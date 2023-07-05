<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Pattern Matching" FOLDED="false" ID="ID_1002227777" CREATED="1688400710907" MODIFIED="1688400724729" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_note_icons="true" fit_to_viewport="false"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="15" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Supported By" POSITION="right" ID="ID_540368128" CREATED="1688400740187" MODIFIED="1688400891604">
<edge COLOR="#ff0000"/>
<font BOLD="true"/>
<node TEXT="Is Expression" ID="ID_1830940462" CREATED="1688400746051" MODIFIED="1688400804566"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if (str is string myString)
    </p>
    <p>
      {
    </p>
    <p>
      // myString
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Switch Expression" ID="ID_1020144649" CREATED="1688400750316" MODIFIED="1688400843653"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      str switch
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;string myStr =&gt; myStr[0],
    </p>
    <p>
      &#160;&#160;_ =&gt; '0'
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Switch Statement" ID="ID_1754263905" CREATED="1688400755020" MODIFIED="1688400875287"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      case str
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;string myString: Console.WriteLine(myString);
    </p>
    <p>
      &#160;&#160;&#160;default: &quot;foo&quot;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Combined By" POSITION="left" ID="ID_1304981630" CREATED="1688400887075" MODIFIED="1688400892515">
<edge COLOR="#7c0000"/>
<font BOLD="true"/>
<node TEXT="is" ID="ID_1086127093" CREATED="1688400897187" MODIFIED="1688401206447">
<font NAME="Roboto Mono"/>
</node>
<node TEXT="and" ID="ID_1151299987" CREATED="1688400899124" MODIFIED="1688401206452">
<font NAME="Roboto Mono"/>
</node>
<node TEXT="not" ID="ID_1203582595" CREATED="1688400901924" MODIFIED="1688401206453">
<font NAME="Roboto Mono"/>
</node>
</node>
<node TEXT="Pattern Kinds" POSITION="right" ID="ID_101079934" CREATED="1688400932046" MODIFIED="1688549370490">
<edge COLOR="#00007c"/>
<font BOLD="true"/>
<node TEXT="Assigners" ID="ID_59369721" CREATED="1688400962503" MODIFIED="1688549340502">
<font BOLD="true"/>
<node TEXT="declaration" ID="ID_1983198043" CREATED="1688401106535" MODIFIED="1688401276780"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      is string myStr
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="var" ID="ID_935547172" CREATED="1688401118792" MODIFIED="1688401337358"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      is var myStr
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="discard" ID="ID_211605985" CREATED="1688401035116" MODIFIED="1688401723542"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if (1 is var _)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Console.WriteLine(&quot;Who cares&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      A discard pattern can't be a pattern in an is expression or a switch statement. In those cases, to match any expression, use a var pattern with a discard: var _.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Checkers" ID="ID_760536626" CREATED="1688401000065" MODIFIED="1688401009514">
<font BOLD="true"/>
<node TEXT="constant" ID="ID_1505285899" CREATED="1688401068190" MODIFIED="1688401393545"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      dateTime.Year is 2023
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="relational" ID="ID_1491003058" CREATED="1688401096638" MODIFIED="1688401434804"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      date.Year is &lt;= 2023
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="property" ID="ID_134654441" CREATED="1688401099407" MODIFIED="1688401456350"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      date is { Year: 2023 }
    </p>
    <p>
      date is { Year: &lt;= 2023 }
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="type" ID="ID_761315175" CREATED="1688401131952" MODIFIED="1688401471135"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      date is DateTime
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Complex" ID="ID_545186947" CREATED="1688401010969" MODIFIED="1688401025346">
<font BOLD="true"/>
<node TEXT="list" ID="ID_1521308542" CREATED="1688401047252" MODIFIED="1688401595157"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      var a = new int[] { 1, 0, 1 } switch
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;[_, _, 1] =&gt; &quot;Last One&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;[_, _, _] =&gt; &quot;Any One&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;_ =&gt; &quot;Zero&quot;,
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="property" ID="ID_511448795" CREATED="1688401054420" MODIFIED="1688401833532"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if (DateTime.Now is { Year: 2023 })
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Console.WriteLine(&quot;Who cares&quot;);
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Paranthesized" ID="ID_17379441" CREATED="1688549361154" MODIFIED="1688549371843">
<font BOLD="true"/>
<node TEXT="paranthesized" ID="ID_1300680409" CREATED="1688401039603" MODIFIED="1688401783599"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      if (1 is (var _ or int))
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Console.WriteLine(&quot;Who cares&quot;);
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="positional (deconstruct)" ID="ID_1058348569" CREATED="1688401050524" MODIFIED="1688401955564"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Console.WriteLine(Classify(new Point()));
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      string Classify(Point point) =&gt; point switch
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;(0, 0) =&gt; &quot;Origin&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;(1, 0) =&gt; &quot;positive X basis end&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;(0, 1) =&gt; &quot;positive Y basis end&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;_ =&gt; &quot;Just a point&quot;,
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      public readonly struct Point
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;public int X { get; }
    </p>
    <p>
      &#160;&#160;&#160;&#160;public int Y { get; }
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;public Point(int x, int y) =&gt; (X, Y) = (x, y);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void Deconstruct(out int x, out int y) =&gt; (x, y) = (X, Y);
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Extended By" POSITION="left" ID="ID_351303530" CREATED="1688401169994" MODIFIED="1688551249751">
<edge COLOR="#0000ff"/>
<font BOLD="true"/>
<node TEXT="Case guards" ID="ID_1937575463" CREATED="1688551254400" MODIFIED="1688551259280">
<font BOLD="true"/>
<node TEXT="when" ID="ID_1346981624" CREATED="1688401176555" MODIFIED="1688551296520">
<font NAME="Roboto Mono"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      static Point Transform(Point point) =&gt; point switch
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ X: 0, Y: 0 }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;=&gt; new Point(0, 0),
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ X: var x, Y: var y } when x &lt; y =&gt; new Point(x + y, y),
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ X: var x, Y: var y } when x &gt; y =&gt; new Point(x - y, y),
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ X: var x, Y: var y }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;=&gt; new Point(2 * x, 2 * y),
    </p>
    <p>
      };
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</map>
