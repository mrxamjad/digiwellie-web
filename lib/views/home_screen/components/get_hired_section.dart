import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetHiredSection extends StatelessWidget {
  const GetHiredSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        // If screen width is less than 600, switch to column (mobile)
        if (screenWidth < 600) {
          return _buildMobileLayout(context);
        } else {
          return _buildDesktopLayout(
              context); // For tablet and desktop, keep Row
        }
      },
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 150),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffE4ECF7),
            Color(0xffF1F1F5),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Hire the best developers and designers around!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          // Top Gradient Box Row
          _buildRotatedGradiantRow(),
          const SizedBox(height: 20),
          // Button Section
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Clr.purple57007B,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Hire Top Developers",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Bottom Gradient Box Row
          Transform.rotate(
              angle: 180 * 3.14 / 180, child: _buildRotatedGradiantRow()),

          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Container(
      height: 285,
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffE4ECF7),
            Color(0xffF1F1F5),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Hire the best developers and designers around!",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildRotatedGradiantRow(),
                const SizedBox(height: 30),
                SizedBox(
                  width: 250,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Clr.purple57007B,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Hire Top Developers",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Transform.rotate(
                    angle: 180 * 3.14 / 180, child: _buildRotatedGradiantRow()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRotatedGradiantRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: 45 * 3.14 / 180,
          child: const GradianBox(height: 5, width: 50),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Transform.rotate(
            angle: 90 * 3.14 / 180,
            child: const GradianBox(height: 5, width: 50),
          ),
        ),
        Transform.rotate(
          angle: 135 * 3.14 / 180,
          child: const GradianBox(height: 5, width: 50),
        ),
      ],
    );
  }
}
