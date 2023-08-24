<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="SPAN" FOLDED="false" ID="ID_1103036783" CREATED="1692858694623" MODIFIED="1692858695905" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="4" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Stack only" POSITION="right" ID="ID_511231873" CREATED="1692858696413" MODIFIED="1692858787253">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Because in the heap it's possible to &quot;tear&quot; the data under the pointer of span.
    </p>
    <p>
      
    </p>
    <p>
      Imagine a Span with len=50.
    </p>
    <p>
      Some thread re-wrote it to len=20, but didn't commit.
    </p>
    <p>
      And other thread comes in and reads brave-new 20 chars, and old ones.
    </p>
    <p>
      So spans never dwell on heap,
    </p>
    <p>
      only on stack of the thread.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Unboxable" ID="ID_625730952" CREATED="1692859031362" MODIFIED="1692859033756">
<node TEXT="Cant do a reflection invoke API" ID="ID_1007870577" CREATED="1692858807772" MODIFIED="1692858832632"/>
</node>
</node>
<node TEXT="Cant use" POSITION="left" ID="ID_135539622" CREATED="1692859209837" MODIFIED="1692859908482">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Generally speaking, the <b>ref </b>keyword removes the boxing feature completely.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="As Generic" ID="ID_489618050" CREATED="1692859211917" MODIFIED="1692859213992"/>
<node TEXT="As Local variable in async" ID="ID_1644347324" CREATED="1692859215445" MODIFIED="1692859291352"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      async Foo()
    </p>
    <p>
      {
    </p>
    <p>
      Span&lt;int&gt; bar = GetSpan();
    </p>
    <p>
      bar[0] = &quot;foo&quot;;
    </p>
    <p>
      await SomeCall();
    </p>
    <p>
      bar[1] = &quot;bar&quot;; // ILLEGAL
    </p>
    <p>
      }
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="In class or struct fields" ID="ID_131373198" CREATED="1692859296953" MODIFIED="1692859305324"/>
<node TEXT="In reflection api" ID="ID_208001434" CREATED="1692859876261" MODIFIED="1692859882329"/>
</node>
<node TEXT="Unpersistable in async operations" POSITION="right" ID="ID_734059630" CREATED="1692860025095" MODIFIED="1692860033179">
<edge COLOR="#ff00ff"/>
<node ID="ID_1869327476" CREATED="1692860033543" MODIFIED="1692860037275"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Use <b>Memory</b>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Convertable back to Span" ID="ID_299347077" CREATED="1692860093091" MODIFIED="1692860097038"/>
</node>
</node>
</node>
</map>
