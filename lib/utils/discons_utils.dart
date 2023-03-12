import 'package:flutter/material.dart';

class DisconsUtils extends StatelessWidget {
  const DisconsUtils({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
            clipper: RPSCustomPainter(),
            child: Container(
              height: 250,
              color: const Color.fromRGBO(243, 211, 85, 1),
            )),
        Row(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '50% Off',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                ),
                const Text('Unbelevable Visual &\nPerformance',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 120,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all()),
                  child: const Center(child: Text('Buy Now')),
                )
              ],
            ),
            Image.asset('asset/images/headset_discont-removebg-preview.png',width: 200,)
          ],
        )
      ],
    );
  }
}

class RPSCustomPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.7943800, size.height * 0.1028800);
    path0.cubicTo(
        size.width * 0.9560800,
        size.height * 0.0796000,
        size.width * 0.9574400,
        size.height * 0.2726400,
        size.width * 0.9582200,
        size.height * 0.4602400);
    path0.cubicTo(
        size.width * 0.9587200,
        size.height * 0.5592400,
        size.width * 0.9568800,
        size.height * 0.4701200,
        size.width * 0.9573800,
        size.height * 0.5691200);
    path0.cubicTo(
        size.width * 0.9536000,
        size.height * 0.8601200,
        size.width * 0.8792600,
        size.height * 0.8782800,
        size.width * 0.7830800,
        size.height * 0.8960400);
    path0.cubicTo(
        size.width * 0.6100800,
        size.height * 0.8970400,
        size.width * 0.4250600,
        size.height * 0.9032800,
        size.width * 0.2677000,
        size.height * 0.9028800);
    path0.cubicTo(
        size.width * 0.1631000,
        size.height * 0.8964800,
        size.width * 0.0785600,
        size.height * 0.8214000,
        size.width * 0.0409200,
        size.height * 0.6983600);
    path0.cubicTo(
        size.width * 0.0205600,
        size.height * 0.6161600,
        size.width * 0.0167000,
        size.height * 0.4882400,
        size.width * 0.0431800,
        size.height * 0.3835600);
    path0.cubicTo(
        size.width * 0.0771600,
        size.height * 0.2786000,
        size.width * 0.1140400,
        size.height * 0.2276800,
        size.width * 0.2362200,
        size.height * 0.1908800);
    path0.cubicTo(
        size.width * 0.4959200,
        size.height * 0.1524400,
        size.width * 0.2366000,
        size.height * 0.1896400,
        size.width * 0.7943800,
        size.height * 0.1028800);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
