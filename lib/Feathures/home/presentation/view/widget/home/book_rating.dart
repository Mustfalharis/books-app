

import 'package:flutter/cupertino.dart';
import '../../../../../../core/styles/styles.dart';
import '../../../../../../core/utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BookRating extends StatelessWidget {
  const BookRating({Key? key,
     this.mainAxisAlignment=MainAxisAlignment.start,
    required this.rating,
    required this.count
  }
      ) : super(key: key);
 final MainAxisAlignment mainAxisAlignment;
 final int rating;
 final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
       const Icon(
          FontAwesomeIcons.solidStar,
          color: AppColor.gold,
          size: 14,
        ),
        const SizedBox(width: 6.3 ,),
         Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5 ,),
        Opacity(
          opacity: .5,
          child:  Text(
            count.toString(),
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}

