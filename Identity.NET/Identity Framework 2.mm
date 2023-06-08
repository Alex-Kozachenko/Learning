<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Identity Framework&#xa;2" FOLDED="false" ID="ID_560972649" CREATED="1685516970131" MODIFIED="1685517023415" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="2.0">
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
<hook NAME="AutomaticEdgeColor" COUNTER="3" RULE="ON_BRANCH_CREATION"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="color: rgb(0, 0, 0); font-family: Open Sans, sans-serif; font-size: 15px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none"><font color="rgb(0, 0, 0)" face="Open Sans, sans-serif" size="15px">about the user registration process and how to change the rules which ASP.NET Core Identity provides out of the box. </font></span>
    </p>
  </body>
</html>

</richcontent>
<node TEXT="User Registration" FOLDED="true" POSITION="right" ID="ID_1477831240" CREATED="1685517149876" MODIFIED="1685517153926">
<edge COLOR="#ff0000"/>
<node TEXT="UserRegistrationModel" ID="ID_1558302178" CREATED="1685517157692" MODIFIED="1685517161982"/>
<node TEXT="Automapper lib" FOLDED="true" ID="ID_1392887753" CREATED="1685517436533" MODIFIED="1685517465223"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (map UserRegistrationModel to the User class)
    </p>
  </body>
</html>

</richcontent>
<node TEXT="services.AddAutomapper" ID="ID_367659889" CREATED="1685517700540" MODIFIED="1685517732417"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (typeof(Startup))
    </p>
    <p>
      or
    </p>
    <p>
      (typeof(Program)
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="mapper.Map&lt;User&gt;(userModel)" ID="ID_1071590065" CREATED="1685517902176" MODIFIED="1685517908652"/>
<node TEXT="MappingProfile" ID="ID_260068439" CREATED="1685518055385" MODIFIED="1685518073841"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="enlighter-clipboard" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-style: normal; font-weight: 400; font-size: 15px; line-height: inherit; font-family: monospace; vertical-align: baseline; width: 1px; height: 1px; color: rgb(0, 0, 0); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px">public class MappingProfile : Profile
{
    public MappingProfile()
    {
        CreateMap&lt;UserRegistrationModel, User&gt;()
            .ForMember(u =&gt; u.UserName, opt =&gt; opt.MapFrom(x =&gt; x.Email));
    }
}</pre>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="Identity Options" POSITION="left" ID="ID_1945935141" CREATED="1685518374830" MODIFIED="1685518481604">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Rules for passwords
    </p>
    <p>
      
    </p>
    <pre class="enlighter-clipboard" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-style: normal; font-weight: 400; font-size: 15px; line-height: inherit; font-family: monospace; vertical-align: baseline; width: 1px; height: 1px; color: rgb(0, 0, 0); letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px">services.AddIdentity&lt;User, IdentityRole&gt;(opt =&gt;
{
    opt.Password.RequiredLength = 7;
    opt.Password.RequireDigit = false;
    opt.Password.RequireUppercase = false;
})
 .AddEntityFrameworkStores&lt;ApplicationContext&gt;();</pre>
  </body>
</html>

</richcontent>
</node>
</node>
</map>
