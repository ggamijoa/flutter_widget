import 'package:flutter/material.dart';
class AnimatedIconsWidget extends StatefulWidget {
  const AnimatedIconsWidget({super.key});

  @override
  State<AnimatedIconsWidget> createState() => _AnimatedIconsWidgetState();
}

class _AnimatedIconsWidgetState extends State<AnimatedIconsWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController ;
  bool videoplaying = false ;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1)) ;
  }

  void _iconTapped(){
    if(videoplaying == false){
      _animationController.forward() ;
      videoplaying = true ;
    }else{
      _animationController.reverse() ;
      videoplaying = false ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _iconTapped() ;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedIcon(
                icon: AnimatedIcons.view_list,
                progress: _animationController,
                size: 150,
                color: Colors.pinkAccent,
              ),
              AnimatedIcon(
                icon: AnimatedIcons.ellipsis_search,
                progress: _animationController,
                size: 150,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
