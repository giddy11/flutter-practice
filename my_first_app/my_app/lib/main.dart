import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // Stateless widgets are immutable, meaning that their properties can't change - all values are final. Stateful widgets maintain state that might change during the lifetime of the widget. When a state changes, the widget rebuilds to reflect the new state. In contrast, stateless widgets do not have any mutable state and will not rebuild unless their parent widget rebuilds and provides new data. Examples of stateless widgets include Text, Icon, and IconButton, while examples of stateful widgets include Checkbox, Radio, Slider, InkWell, Form, and TextField.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'My First App', // how can i see this in the ui? This title is used by the operating system to identify the app. On Android, it appears in the app switcher and as the label for the app icon. On iOS, it is not typically displayed to the user but can be used for accessibility purposes. In general, this title is not directly visible in the UI of the app itself, but it serves as an identifier for the app within the operating system.
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a purple toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      //to remove the debug banner in the top right corner of the app, set debugShowCheckedModeBanner to false
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'My First App Home Page'),
      // Scaffold is a layout for the major Material Components. It provides APIs for showing drawers, snack bars, and bottom sheets. The Scaffold widget implements the basic material design visual layout structure. It gives you a default app bar, title, and a body property that holds the widget tree for the home screen. The Scaffold is designed to be a top-level container for your app's content, providing a consistent visual structure and handling various UI elements like app bars, floating action buttons, and navigation drawers.

      // Why do we have const here? In Flutter, using const constructors allows the framework to optimize the widget tree by creating compile-time constants. When a widget is marked as const, it means that its properties cannot change after it is created. This allows Flutter to reuse the same instance of the widget whenever it is needed, rather than creating a new instance each time. This can lead to improved performance and reduced memory usage, especially for widgets that are used frequently or have complex structures. By marking MyHomePage as const, we indicate that its properties will not change, allowing Flutter to optimize its usage in the widget tree.
      // home: Scaffold(
      //   appBar: AppBar(
      //     // title: const Text('My First App Home Page'),
      //     title: Row(
      //       children: const [
      //         // Icon(Icons.home, color: Colors.white),
      //         Icon(Icons.favorite, color: Colors.red),
      //         // SizedBox(width: 8), // Add some spacing between the icon and text
      //         Text('Profile'),
      //       ],
      //     ),
      //   ),
      //   // body: const Center(
      //   //   child: Text('Hello, World!'),
      //   // ),
      //   body: Column(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: const [
      //       Text('Hello, World!'),
      //       Text('Welcome to my first Flutter app.'),
      //       Row(
      //         // mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text('This is a row of text.'),
      //           Text('It is centered horizontally.'),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // interactive logic

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final". why? because they are immutable and cannot be changed after the widget is created. This is a fundamental principle in Flutter's design, as it allows for efficient rebuilding of the UI when the state changes. By marking fields as final, it ensures that the widget's configuration remains consistent and prevents unintended side effects from modifying the widget's properties after it has been built.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedTab = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // Widget describes what their view should look like given their current configuration and state. When a widget's state changes, it rebuilds its description, which the framework diffs against the previous description to determine the minimal changes needed to update the UI. This process allows Flutter to efficiently update the UI without needing to rebuild the entire widget tree, resulting in smooth and responsive user interfaces.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets. What does that mean? It means that if you want to rebuild anything with new information, you can just rerun the build method. For example, if you change _counter and want the display to reflect that, you can just call setState() and then the build method will be rerun, and the display will update with the new value of _counter.
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   backgroundColor: Colors.white,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      // What is SafeArea? SafeArea is a widget that insets its child by sufficient padding to avoid intrusions by the operating system. For example, on iOS devices with a notch, SafeArea will add padding to ensure that the content is not obscured by the notch or other system UI elements. It helps to ensure that the content of your app is displayed correctly on different devices and screen sizes, providing a better user experience. is there an option asides using safe area? Yes, you can use MediaQuery to get the padding values for the device and manually apply them to your widgets. However, using SafeArea is generally recommended as it provides a more convenient and reliable way to handle these issues without needing to manually calculate and apply padding. Which widget leades to manually applying padding? The Padding widget can be used to manually apply padding to a widget. You can use it in combination with MediaQuery to get the necessary padding values for the device and apply them to your widgets. However, using SafeArea is often more straightforward and less error-prone for handling system intrusions compared to manually calculating and applying padding with the Padding widget.
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // The Profile AppBar is a custom widget that consists of a Row with an icon, a title, and a more options button. The Row is wrapped in a Padding widget to provide spacing around the content. The title is centered within the available space using an Expanded widget, which allows it to take up all the remaining horizontal space between the icon and the more options button. The more options button is implemented using an IconButton widget, which can be configured with an onPressed callback to handle user interactions. Overall, this layout creates a simple and clean profile app bar that can be used in a variety of applications.
            Padding(
              // padding: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // Icon(Icons.home, color: Colors.blue),
                  SizedBox(
                    width: 48,
                  ), // Add some spacing between the icon and text
                  // Expanded is a widget that expands a child of a Row, Column, or Flex so that the child fills the available space. It can be used to create flexible layouts where one or more children can expand to fill the remaining space in the main axis. In this case, it is used to make the 'Profile' text take up all the available horizontal space between the icon and the more options button, allowing it to be centered within that space.
                  Expanded(
                    child: Text(
                      'Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz, color: Colors.black),
                    onPressed: null, // Add your onPressed logic here
                  ),
                ],
              ),
            ),

            // The Profile Header is a widget that displays a user's profile picture, along with their recipe count, follower count, and following count. The layout consists of a Row with the profile picture on the left and the counts on the right. The profile picture is displayed using a Container with a circular shape and a border, which contains a ClipOval widget to display the image in a circular shape. The counts are displayed in a Column with the label (e.g., "Recipe", "Followers", "Following") and the corresponding count value below it. The entire layout is wrapped in a Padding widget to provide spacing around the content. This design creates a visually appealing profile header that can be used in various applications to showcase user information.

            // The SingleChildScrollView widget is a scrollable widget that allows its child to be scrolled when the content exceeds the available space. It is useful for situations where you have a single child that may be larger than the screen, such as a long list of items or a large image. In this case, it is used to wrap the Column containing the profile header and details, allowing the user to scroll through the content if it exceeds the vertical space of the screen. This ensures that all the information can be accessed even on smaller devices or when there is a lot of content to display.

            // BouncingScrollPhysics is a scroll physics that provides a bouncing effect when the user scrolls beyond the edge of the content. It is commonly used in iOS applications to give a more natural and responsive feel to scrolling. When the user scrolls past the edge of the content, it will bounce back with a spring-like effect, providing visual feedback that they have reached the end of the scrollable area. This can enhance the user experience by making scrolling feel more interactive and engaging.
            Expanded(
              child: SingleChildScrollView(
                // physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 24,
                          ), // Add some spacing between the text widgets
                          Expanded(
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 82,
                                  height: 82,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    border: Border.all(
                                      color: Color(0xFF3DAA6E).withOpacity(0.3),
                                      // width: 3,
                                    ), // Add a blue border with a width of 2
                                    shape: BoxShape.circle,
                                  ),
                                  // Difference between ClipOval and CircleAvatar: ClipOval is a widget that clips its child using an oval shape. It can be used to create circular or elliptical shapes for any widget, including images. CircleAvatar, on the other hand, is a specialized widget that is designed specifically for displaying circular profile images. It provides additional properties such as backgroundColor and foregroundColor, and it automatically clips the image to a circular shape. In this case, using ClipOval allows for more flexibility in styling the container with a border, while CircleAvatar is more straightforward for displaying a circular image without additional styling.
                                  // But i cant see more properties in ClipOval, how can i add background color to it? ClipOval itself does not have a backgroundColor property. To add a background color to a ClipOval, you can wrap it in a Container and set the background color on the Container. why use ClipOval instead of CircleAvatar? Using ClipOval allows for more flexibility in styling the container with a border, while CircleAvatar is more straightforward for displaying a circular image without additional styling. In this case, using ClipOval allows you to easily add a border around the image, which is not as straightforward with CircleAvatar. Additionally, ClipOval can be used to clip any widget into an oval shape, while CircleAvatar is specifically designed for circular images and may not provide the same level of customization for other types of content.
                                  // child: ClipOval(
                                  //   child: Image.network(
                                  //     'https://images.unsplash.com/photo-1577219491135-ce391730fb2c?w=200&h=200&fit=crop',
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  child: const CircleAvatar(
                                    // radius: 40,
                                    backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1577219491135-ce391730fb2c?w=200&h=200&fit=crop',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // width: 24,
                                ), // Add some spacing between the text widgets
                                // Difference between MainAxisAlignment and CrossAxisAlignment: MainAxisAlignment is used to align children along the main axis of a Row, Column, or Flex widget. It controls how the children are distributed along the main axis, which is horizontal for Row and vertical for Column. CrossAxisAlignment, on the other hand, is used to align children along the cross axis, which is perpendicular to the main axis. It controls how the children are aligned in relation to each other along the cross axis. In this case, MainAxisAlignment.spaceAround is used to distribute the children evenly along the horizontal axis with equal space around them, while CrossAxisAlignment.start is used to align the children at the top of the Row.
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        // mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Recipe',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF9E9E9E),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ), // Add some spacing between the name and email
                                          Text(
                                            '4',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Followers',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF9E9E9E),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ), // Add some spacing between the name and email
                                          Text(
                                            '2.5M',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Following',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF9E9E9E),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ), // Add some spacing between the name and email
                                          Text(
                                            '259',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ), // Add some spacing between the text widgets
                    // The Profile Details widget is a simple layout that displays a user's name, title, and a brief description. The layout consists of a Column with the user's name at the top, followed by their title and a short bio. The name is styled with a larger font size and bold weight to make it stand out, while the title and description are styled with smaller font sizes and a lighter color to create a visual hierarchy. The entire layout is wrapped in a Padding widget to provide spacing around the content, creating a clean and organized presentation of the user's profile details.
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Afuwape Abiodun',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            'Chief',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Private Chef\nPassionate about food and life 🍕🍔🌶️📸',
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Color(0xFF9E9E9E),
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ), // Add some spacing between the text widgets
                          // The GestureDetector widget is a widget that detects gestures. It can be used to detect taps, drags, and other gestures on its child widget. In this case, it is used to detect a tap on the "More..." text, which can be used to trigger an action such as navigating to a different screen or displaying additional information. The onTap callback can be implemented to define the specific behavior that should occur when the "More..." text is tapped.
                          GestureDetector(
                            onTap: () {
                              // Handle "See more" tap
                            },
                            child: Text(
                              'More...',
                              style: TextStyle(
                                fontSize: 13.5,
                                color: Color(0xFF3DAA6E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTab = 0;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: _selectedTab == 0
                                      ? const Color(0xFF3DAA6E)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: const Color(
                                      0xFF3DAA6E,
                                    ).withOpacity(0.2),
                                    width: 1.5,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Recipe',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: _selectedTab == 0
                                          ? Colors.white
                                          : const Color(0xFF3DAA6E),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTab = 1;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: _selectedTab == 1
                                      ? const Color(0xFF3DAA6E)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: const Color(
                                      0xFF3DAA6E,
                                    ).withOpacity(0.2),
                                    width: 1.5,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Videos',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: _selectedTab == 1
                                          ? Colors.white
                                          : const Color(0xFF3DAA6E),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTab = 2;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: _selectedTab == 2
                                      ? const Color(0xFF3DAA6E)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: const Color(
                                      0xFF3DAA6E,
                                    ).withOpacity(0.2),
                                    width: 1.5,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Tag',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: _selectedTab == 2
                                          ? Colors.white
                                          : const Color(0xFF3DAA6E),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // The Recipe Card is a widget that displays a recipe with an image, title, chef's name, rating, cooking time, and a bookmark icon. The card is designed with rounded corners and a shadow effect to create a visually appealing layout. The background image of the card is displayed using an Image.network widget, which loads the image from a URL. A gradient overlay is added on top of the image to enhance readability of the text and icons. The rating is displayed in a small container at the top right corner of the card, while the title and chef's name are positioned at the bottom left corner. The cooking time and bookmark icon are placed side by side at the bottom right corner of the card. Overall, this design creates an attractive and informative recipe card that can be used in various applications to showcase recipes effectively.
                    Container(
                      height: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      // ClipRRect is a widget that clips its child using a rounded rectangle. It is commonly used to create rounded corners for images or other widgets. In this case, it is used to clip the image of the recipe card, giving it rounded corners with a radius of 18 pixels. This helps to create a visually appealing design for the recipe card, making it look more polished and professional.

                      // Stack is a widget that allows you to stack multiple children on top of each other. It is useful for creating complex layouts where you want to overlay widgets or position them relative to each other. In this case, it is used to stack the background image of the recipe card and any additional content (such as text or icons) that may be added on top of the image. The fit: StackFit.expand property ensures that the children of the Stack will expand to fill the available space, allowing the background image to cover the entire area of the recipe card.
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // ── Background image
                            Image.network(
                              'https://images.unsplash.com/photo-1544025162-d76694265947?w=700&fit=crop',
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  Container(color: Colors.grey[300]),
                            ),

                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: const [0.0, 0.45, 1.0],
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.75),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC107),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      4.0.toStringAsFixed(1),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              left: 14,
                              right: 14,
                              bottom: 14,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Title + Chef
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Traditional spare ribs baked',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            height: 1.3,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          'By Chef John',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  // Time + Bookmark side-by-side
                                  Row(
                                    // Why do we have mainAxisSize: MainAxisSize.min here? The mainAxisSize: MainAxisSize.min property is used to make the Row take up only as much horizontal space as its children need, rather than expanding to fill the available width. This is important in this case because we want the time and bookmark icons to be positioned closely together on the right side of the card, without taking up unnecessary space. By setting mainAxisSize to MainAxisSize.min, we ensure that the Row will only be as wide as the combined width of the time and bookmark widgets, allowing for a more compact and visually appealing layout.
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.timer_outlined,
                                              size: 13,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '20 min',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        // onTap: onTap,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.2,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 17,
                                            color: Colors.white.withOpacity(
                                              0.9,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // child: Image.network(
                        //   'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400&h=200&fit=crop',
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      height: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      // ClipRRect is a widget that clips its child using a rounded rectangle. It is commonly used to create rounded corners for images or other widgets. In this case, it is used to clip the image of the recipe card, giving it rounded corners with a radius of 18 pixels. This helps to create a visually appealing design for the recipe card, making it look more polished and professional.

                      // Stack is a widget that allows you to stack multiple children on top of each other. It is useful for creating complex layouts where you want to overlay widgets or position them relative to each other. In this case, it is used to stack the background image of the recipe card and any additional content (such as text or icons) that may be added on top of the image. The fit: StackFit.expand property ensures that the children of the Stack will expand to fill the available space, allowing the background image to cover the entire area of the recipe card.
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // ── Background image
                            Image.network(
                              'https://images.unsplash.com/photo-1544025162-d76694265947?w=700&fit=crop',
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  Container(color: Colors.grey[300]),
                            ),

                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: const [0.0, 0.45, 1.0],
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.75),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC107),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      4.0.toStringAsFixed(1),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              left: 14,
                              right: 14,
                              bottom: 14,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Title + Chef
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Traditional spare ribs baked',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            height: 1.3,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          'By Chef John',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  // Time + Bookmark side-by-side
                                  Row(
                                    // Why do we have mainAxisSize: MainAxisSize.min here? The mainAxisSize: MainAxisSize.min property is used to make the Row take up only as much horizontal space as its children need, rather than expanding to fill the available width. This is important in this case because we want the time and bookmark icons to be positioned closely together on the right side of the card, without taking up unnecessary space. By setting mainAxisSize to MainAxisSize.min, we ensure that the Row will only be as wide as the combined width of the time and bookmark widgets, allowing for a more compact and visually appealing layout.
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.timer_outlined,
                                              size: 13,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '20 min',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        // onTap: onTap,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.2,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 17,
                                            color: Colors.white.withOpacity(
                                              0.9,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // child: Image.network(
                        //   'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400&h=200&fit=crop',
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      height: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      // ClipRRect is a widget that clips its child using a rounded rectangle. It is commonly used to create rounded corners for images or other widgets. In this case, it is used to clip the image of the recipe card, giving it rounded corners with a radius of 18 pixels. This helps to create a visually appealing design for the recipe card, making it look more polished and professional.

                      // Stack is a widget that allows you to stack multiple children on top of each other. It is useful for creating complex layouts where you want to overlay widgets or position them relative to each other. In this case, it is used to stack the background image of the recipe card and any additional content (such as text or icons) that may be added on top of the image. The fit: StackFit.expand property ensures that the children of the Stack will expand to fill the available space, allowing the background image to cover the entire area of the recipe card.
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // ── Background image
                            Image.network(
                              'https://images.unsplash.com/photo-1544025162-d76694265947?w=700&fit=crop',
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  Container(color: Colors.grey[300]),
                            ),

                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: const [0.0, 0.45, 1.0],
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.75),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC107),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      4.0.toStringAsFixed(1),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              left: 14,
                              right: 14,
                              bottom: 14,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Title + Chef
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Traditional spare ribs baked',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            height: 1.3,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          'By Chef John',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  // Time + Bookmark side-by-side
                                  Row(
                                    // Why do we have mainAxisSize: MainAxisSize.min here? The mainAxisSize: MainAxisSize.min property is used to make the Row take up only as much horizontal space as its children need, rather than expanding to fill the available width. This is important in this case because we want the time and bookmark icons to be positioned closely together on the right side of the card, without taking up unnecessary space. By setting mainAxisSize to MainAxisSize.min, we ensure that the Row will only be as wide as the combined width of the time and bookmark widgets, allowing for a more compact and visually appealing layout.
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.timer_outlined,
                                              size: 13,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '20 min',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        // onTap: onTap,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.2,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 17,
                                            color: Colors.white.withOpacity(
                                              0.9,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // child: Image.network(
                        //   'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400&h=200&fit=crop',
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    //
                    Container(
                      height: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      // ClipRRect is a widget that clips its child using a rounded rectangle. It is commonly used to create rounded corners for images or other widgets. In this case, it is used to clip the image of the recipe card, giving it rounded corners with a radius of 18 pixels. This helps to create a visually appealing design for the recipe card, making it look more polished and professional.

                      // Stack is a widget that allows you to stack multiple children on top of each other. It is useful for creating complex layouts where you want to overlay widgets or position them relative to each other. In this case, it is used to stack the background image of the recipe card and any additional content (such as text or icons) that may be added on top of the image. The fit: StackFit.expand property ensures that the children of the Stack will expand to fill the available space, allowing the background image to cover the entire area of the recipe card.
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // ── Background image
                            Image.network(
                              'https://images.unsplash.com/photo-1544025162-d76694265947?w=700&fit=crop',
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  Container(color: Colors.grey[300]),
                            ),

                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: const [0.0, 0.45, 1.0],
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.75),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC107),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      4.0.toStringAsFixed(1),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              left: 14,
                              right: 14,
                              bottom: 14,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Title + Chef
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Traditional spare ribs baked',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            height: 1.3,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          'By Chef John',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  // Time + Bookmark side-by-side
                                  Row(
                                    // Why do we have mainAxisSize: MainAxisSize.min here? The mainAxisSize: MainAxisSize.min property is used to make the Row take up only as much horizontal space as its children need, rather than expanding to fill the available width. This is important in this case because we want the time and bookmark icons to be positioned closely together on the right side of the card, without taking up unnecessary space. By setting mainAxisSize to MainAxisSize.min, we ensure that the Row will only be as wide as the combined width of the time and bookmark widgets, allowing for a more compact and visually appealing layout.
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.timer_outlined,
                                              size: 13,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              '20 min',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        // onTap: onTap,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.2,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 17,
                                            color: Colors.white.withOpacity(
                                              0.9,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // child: Image.network(
                        //   'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400&h=200&fit=crop',
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),                  
                  ],
                ),
              ),
            ),

            //
          ],
        ),
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //     mainAxisAlignment: .center,
      //     children: [
      //       const Text('You have pushed the button this many times:'),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.amber,
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add, color: Colors.black),
      // ),
    );
  }
}
