import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hurry/app/modules/src/auth_page/animation_store.dart';
import 'package:hurry/app/modules/src/text_field_widget/text_field_widget.dart';

class AuthScreen extends StatelessWidget {
  final VoidCallback onPressed;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AnimationStore animationStore = AnimationStore();

  AuthScreen({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    animationStore.openCard();
    return Observer(
        builder: (context) => Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/img/back_image.png'),
                      fit: BoxFit.cover)),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: SizedBox()),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/hurry_logo.png'),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  AnimatedCrossFade(
                    firstChild: animationStore.firstBuild == true
                        ? SizedBox()
                        : Center(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 100),
                              height: 80,
                              width: 80,
                              child: Center(
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                ),
                              ),
                            ),
                          ),
                    secondChild: Column(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                          height: sh * .6,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              TextFieldWidget(
                                  hint: 'Username',
                                  controller: userController,
                                  obscure: false),
                              SizedBox(
                                height: 10,
                              ),
                              TextFieldWidget(
                                  hint: 'Password',
                                  controller: passwordController,
                                  obscure: false),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'View Password',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 120,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MaterialButton(
                                    onPressed: onPressed,
                                    child: Text('Entrar'),
                                    color: Colors.white,
                                    height: 56,
                                    minWidth: double.maxFinite,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Facebook',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          color: Colors.blue,
                                          height: 56,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: animationStore.closeCard,
                                          child: Text(
                                            'Google',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          color: Colors.red,
                                          height: 56,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    crossFadeState: animationStore.crossFadeState,
                    duration: Duration(
                      milliseconds: 400,
                    ),
                  ),
                ],
              ),
            ));
  }
}
