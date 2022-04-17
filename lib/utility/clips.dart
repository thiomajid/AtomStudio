import 'package:fluent_ui/fluent_ui.dart';

class HomeHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 35);

    final Offset firstControlPoint = Offset(size.width / 4, size.height - 75);
    final Offset firstEndPoint = Offset(size.width / 2, size.height - 20.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final Offset secondControlPoint = Offset((size.width / 2), size.height);
    final Offset secondEndPoint = Offset(size.width, size.height - 50);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
