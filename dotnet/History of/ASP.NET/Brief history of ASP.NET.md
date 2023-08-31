# EPOCH 1 - early web, dot.com boom. 2002-2007

In early 2000th there was a request for a RAD tools for enterprise development.
The Microsoft introduced the WebForms with WinForms alike, as a part of the .NET Framework v1, which been released at 2002.
The WebForms was a part of ASP.NET platform, a part of .NET Framework, which is a successor of ASP pages.
The main idea was to bring Windows developers to the web, allow them to drag and drop apps pretty fast.

Hovewer, as the Web grown larger, the WebForms approach became more obstacle rather than a help.
One thing is an enterprise development, where the look and feel is not at 1st place, but the business logic and automation.
The other thing is a customer development, a single web-portal with large scale for any kind of user.

The WebForms failed to support such stuff because of it's:
- monolistic approach,
- fast to write, hard to support,
- hidden web nature

The response for that was a Java Spring framework and Ruby-On-Rails, which raised around 2005-2007 and was rapidly adopted by the dev community.
Their popularity was in MVC architecturel approach, which brings modularity, testability, easier support.
The disadvantages, however, was a high boilerplate for MVC. And lack of built-in controls, like in WinForms and WebForms.
The Microsoft figured that it loses the market, and made an official platform for MVC development.

# EPOCH 2 - MVC Embrace, 2009-20013

The ASP.NET MVC 1, a separated project, has been released ad late 2009, and pursuited the next aims:
- follow the separation of concerns
- 1st class support for TDD
- Integrated with existing infrastructure of ASP.NET
- Pluggable
- Uses ASPX view engine, but allows to use other ones
- Support of IoC containers
- Complete control over URL and routing
- full control over HTTP

---
The MVC 2 released at early 2010 and brought argues between MVC and WebForms fans,

---
The MVC 3 released at early 2011, and this time it was big:
- Razor
- Scaffolding
- NuGet released (and fits well for MVC)
- SOLID approach for ASP.NET
- REST (Represent State Transfer)

Basically, this is a point where MVC won against WebPages.

---
The MVC 4 released at mid 2012 and proposed:
- WebAPI - simple HTTP servers
- SPA-ready templates
- SignalR

After that, at 2013 the .NET Framework 4.5.1 arrived, which has united all ASP.NET technoligies under The One Umbrella: 
- WebForms
- SignalR
- MVC
- WebAPI

---
The ASP.NET MVC 5 Arrived at 2013 and introduced next stuff:
- Attribute routing for WebAPI
- Better scaffolding
- aded the Identity framework
- Bootstrap 3 as default

The WebForms became closer to MVC, since some techniques been available for both app frameworks.

---
Conclusion:
So it was an epoch where huge mobile impact drove the industry to scalable, modular architecture.
The Bootsrap-3 became a standard, later on come the Flexbox, and client-side framework support became mandatory (however it was a problem back at the MVC 4).

The MVC solution was rapidly growing, gathering the technologies under the one standartized hood, allowing some options for devs.
Hovewer, the ASP.NET didn't reached it's goals.
So the next epoch is about that.

# EPOCH 3 - ASP.NET CORE, 2015 - 2022