part of widgets;


class StarterPainter extends StatelessWidget {
  const StarterPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _StarterCustomPainter(),
    );
  }
}

class _StarterCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    double maxHeight = 1000.h;
    double maxWidth = size.width.abs();
    double radius = 400.r;
    double sideOffset = (maxWidth - radius)/ 2;
    double borderRadius = 50.r;

    path.moveTo(0, 0);
    path.relativeLineTo(0, maxHeight - borderRadius);

    path.relativeLineTo(sideOffset, 0);
    path.relativeArcToPoint(Offset(radius, 0), radius: Radius.circular(200.r));
    path.relativeLineTo(sideOffset, 0);

    path.relativeLineTo(size.width, 0);
    path.relativeLineTo(0, -maxHeight);
    path.close();

    final Paint paint = Paint()..color = mainColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=> true;
  
}