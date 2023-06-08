<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Identity&#xa;framework&#xa;1" FOLDED="false" ID="ID_882715977" CREATED="1685513873112" MODIFIED="1685517063311" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="1.5">
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
<hook NAME="AutomaticEdgeColor" COUNTER="9" RULE="ON_BRANCH_CREATION"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      About setup:
    </p>
    <p>
      - framework
    </p>
    <p>
      - users
    </p>
  </body>
</html>

</richcontent>
<node TEXT="IdentityDbContext" FOLDED="true" POSITION="left" ID="ID_1456926210" CREATED="1685514521015" MODIFIED="1685514525395">
<edge COLOR="#ff00ff"/>
<node TEXT=".OnModelCreating" FOLDED="true" ID="ID_1622168957" CREATED="1685514562889" MODIFIED="1685514570614">
<node TEXT=".ApplyConfiguration" FOLDED="true" ID="ID_1026243971" CREATED="1685515679498" MODIFIED="1685515686742">
<node TEXT="IEntityTypeConfiguration&lt;T&gt;" FOLDED="true" ID="ID_1333315012" CREATED="1685515690675" MODIFIED="1685515718496">
<node TEXT="RoleConfiguration&lt;IdentityRole&gt;" ID="ID_447220352" CREATED="1685515721613" MODIFIED="1685515741474"/>
<node TEXT="EmployeeConfiguration&lt;?&gt;" ID="ID_992973092" CREATED="1685515748735" MODIFIED="1685515759666"/>
</node>
</node>
</node>
</node>
<node TEXT="Register the Identity&#xa;framework" POSITION="left" ID="ID_680868385" CREATED="1685515021404" MODIFIED="1685515893058">
<edge COLOR="#00007c"/>
<node TEXT="AddIdentityCore&lt;TUser&gt;" ID="ID_882803511" CREATED="1685515030125" MODIFIED="1685515037609">
<node TEXT="Services" ID="ID_1840510289" CREATED="1685515199503" MODIFIED="1685515225604">
<node TEXT="- creating users" ID="ID_570868748" CREATED="1685515226256" MODIFIED="1685515232205"/>
<node TEXT="- hashing passwords" ID="ID_1821148476" CREATED="1685515233384" MODIFIED="1685515237373"/>
<node TEXT="- pass validation" ID="ID_913870367" CREATED="1685515239377" MODIFIED="1685515244613"/>
<node TEXT="- etc" ID="ID_1849177306" CREATED="1685515246809" MODIFIED="1685515248645"/>
</node>
</node>
<node TEXT="AddIdentity&lt;TUser, TRole&gt;" ID="ID_32510163" CREATED="1685515040317" MODIFIED="1685516915608"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      AddIdentity&lt;User, IdentityRole&gt;
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Additional Services" ID="ID_1866607721" CREATED="1685515286052" MODIFIED="1685515289976">
<node TEXT="- Roles" ID="ID_649472322" CREATED="1685515292436" MODIFIED="1685515294576"/>
<node TEXT="- External auth" ID="ID_1342957825" CREATED="1685515295517" MODIFIED="1685515299976"/>
<node TEXT="- SignInManager" ID="ID_68395901" CREATED="1685515301805" MODIFIED="1685515305744"/>
</node>
</node>
<node TEXT=".AddEntityFrameworkStores&lt;ApplicationContext&gt;" ID="ID_1924331725" CREATED="1685515397122" MODIFIED="1685515412899">
<font ITALIC="false"/>
</node>
</node>
<node TEXT="User Management" FOLDED="true" POSITION="right" ID="ID_565303486" CREATED="1685515856837" MODIFIED="1685515861136">
<edge COLOR="#7c007c"/>
<node TEXT="IdentityUser&lt;T&gt;" ID="ID_1293911893" CREATED="1685514249823" MODIFIED="1685515865318"/>
<node TEXT="Add userdata" FOLDED="true" ID="ID_804684543" CREATED="1685514629093" MODIFIED="1685515865330">
<node TEXT="- claims" ID="ID_1555720098" CREATED="1685514636406" MODIFIED="1685514640105"/>
<node TEXT="- class properties" ID="ID_439689400" CREATED="1685514641166" MODIFIED="1685514653163"/>
</node>
</node>
</node>
</map>
