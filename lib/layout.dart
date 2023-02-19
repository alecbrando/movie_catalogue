import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_catalogue/mainheader/main_header.dart';
import 'package:movie_catalogue/subheader/sub_header.dart';
import 'dummydata/data.dart';
import 'leftpane/left_pane_widget.dart';
import 'maincontent/main_pane.dart';

/// a. creating StatefulWidget
class AppLayout extends StatefulWidget{
  const AppLayout({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _AppLayoutState() ;
  }
}
/// b. Creating state for stateful widget
class _AppLayoutState extends State<AppLayout>{
  List<Map<String,dynamic>> data = topChart;
  int _currentPage = 1;
  @override
  Widget build(BuildContext context) {
    /// returning a container widget
    return Container(
      /// c. Setting a background image for entire layout
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("/img/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      /// d. Using Backdrop filter to blur the underlying image for the background
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        /// e. Creating the parent row
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// f. First Column for Left pane Section
            Container(
              width: 300,
              color: Colors.indigo.withOpacity(0.95),
              child: LeftPane(mainNavAction: menuAction, selected: _currentPage,),
            ),
            /// g. Second column for Headers and Main Pane sections
            Expanded(
                child: Column(
                  children: [
                    /// h. Main Header section
                    Container(
                      height: 120,
                      color: Colors.indigo.withOpacity(0.80),
                      child: MainHeader(),
                    ),
                    /// filter section
                    Container(
                      height: 120,
                      color: Colors.deepPurple.withOpacity(0.60),
                      child: SubHeader(),
                    ),
                    /// i. Main Pane section
                    const Expanded(
                        child: Center(
                          child: MainPane(data: topChart),
                        )
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
  void menuAction(int page, List<Map<String,dynamic>> data){
    setState(() {
      _currentPage = page;
      this.data = data;
    });
  }
}

