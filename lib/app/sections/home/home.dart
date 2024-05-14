import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive_size.dart';
import 'package:mysite/core/animations/zoom_animation.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      width: 100.w,
      height: 150.h,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 5.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Space.y(3.w)!,
                      Text(
                        "Je suis Menyar Ben Ali,",
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "A ",
                          style: TextStyle(
                            fontSize: 3.w, // Taille dynamique
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Flexible(
                        child: AnimatedTextKit(
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          animatedTexts: Listcomp,
                        ),
                      ),
                      Space.y(1.5.w)!,
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Text(
                          "Je suis diplômée de l'ISET de Kelibia. Actuellement, je poursuis mes études à l'Institut International de Technologie de Sfax (IIT), spécialisé en ingénierie et génie informatique.",
                          style: TextStyle(
                            fontSize: isFontSize(context, 20),
                            fontWeight: FontWeight.w400,
                            color: theme.textColor.withOpacity(0.6),
                          ),
                        ),
                      ),
                      Space.y(3.w)!,
                      ColorChageButton(
                        text: 'télécharger cv',
                        onTap: () {
                          html.window.open(
                            'https://drive.google.com/file/d/1sMuw1RFdn6o5RwTiMFChRTIbDAupTPjR/view?usp=sharing',
                            "https://drive.google.com/file/d/1sMuw1RFdn6o5RwTiMFChRTIbDAupTPjR/view?usp=sharing",
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: const ZoomAnimations(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<TyperAnimatedText> Listcomp = [
  TyperAnimatedText(
    " Concepteur UI/UX",
    speed: const Duration(milliseconds: 50),
    textStyle: AppText.h2!.copyWith(fontSize: 32),
  ),
  TyperAnimatedText(
    " Développeur web",
    speed: const Duration(milliseconds: 50),
    textStyle: AppText.h2!.copyWith(fontSize: 32),
  ),
];




