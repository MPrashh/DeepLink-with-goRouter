# go_router: ^13.2.4

go_router is a package that enables you to navigate from one screen to another easily and cleanly and supports deep linking.

---

# ADVANTAGES :

1. Control pages easily.

using go_router, we can define a URL for each page like this. So easier to manage pages because there was a list URL and page pair.

routes: [
GoRoute(path: "/", builder: (context, state) => const Home()),
GoRoute(path: "/page1", builder: (context, state) => const Page1()),
GoRoute(path: "/page2", builder: (context, state) => const Page2()),
],

// parent route always starts with / and where sub routes not.

2. Setting LayOut Every or Some of pages.

using ShellRoute
Ex: Bottom bar

3. URL easily for Each Page

If each page has its own URL, you can use DeepLink function.

Deep Link enables you to navigate users to your mobile application when you have a web application. For example, when you try to use Twitter on a browser, you would be made to jump to your Twitter app or Play Store. This is because Twitter(X) implements Deep Link and you are forced to use a mobile application. ??

4. go_router: Does not rely on code generation.

5. go_router: Supports passing parameters through route paths. where
   auto_route Supports passing parameters through route constructors or route settings.

---

in Navigator 1.0, we know the concept or pushing a route to the navigation stack.

But Here we have two options,

- going to a route
  go jumps to the target route (/modal) by discarding the previous route (/detail),

- pushing a route
  push always adds the target route on top of the existing one, preserving the navigation stack.

---

# HOW TO USE :

Add Package -> go_router: ^13.2.4

Create router configuration file

final GoRouter router = GoRouter(
routes: [
GoRoute(path: "/", builder: (context, state) => const Home()),
GoRoute(path: "/page1", builder: (context, state) => const Page1()),
GoRoute(path: "/page2", builder: (context, state) => const Page2()),
],
);

Initialize router in main.dart

MaterialApp.router(
title: 'Flutter Demo',
routerConfig: router,
);

add

context.push("/page1");

or

context.go("/page1");

---

https://codewithandrea.com/articles/flutter-navigation-gorouter-go-vs-push/#declarative-routing-with-gorouter

https://medium.com/@mate42/why-you-should-use-go-router-in-a-flutter-application-3f5f916ff8d2

https://docs.page/csells/go_router/declarative-routing
