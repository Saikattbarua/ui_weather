import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3E2DEF),
              Color(0xFF9D52AC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            // "North America" Text
            Positioned(
              top: 94,
              left: 0,
              right: 0,
              child: Text(
                "North America",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  height: 1.24,
                  letterSpacing: 0.47,
                ),
              ),
            ),

            // "Max:24Min18" Text
            Positioned(
              top: 130,
              left: 0,
              right: 0,
              child: Text(
                "Max:24 Min:18",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 0.3,
                ),
              ),
            ),

            // "7-Days Forecasts" Text
            Positioned(
              top: 197,
              left: 0,
              right: 0,
              child: Text(
                "7-Days Forecasts",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.24,
                  letterSpacing: 0.47,
                ),
              ),
            ),

            // Centered Row of 4 Forecast Boxes
            Positioned(
              top: 244,
              left: 0,
              right: 0,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildForecastBox("19°C", "sun.png", "Mon"),
                    const SizedBox(width: 16),
                    _buildForecastBox("18°C", "rain.png", "Tues"),
                    const SizedBox(width: 16),
                    _buildForecastBox("18°C", "rain.png", "Wed"),
                    const SizedBox(width: 16),
                    _buildForecastBox("19°C", "sun.png", "Thu"),
                  ],
                ),
              ),
            ),

            // Air Quality Box at the bottom
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF3E2D8F),
                      Color(0xFF533595),
                      Color(0xFF9D52AC),
                    ],
                    stops: [0.0, 0.2244, 1.0],
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Air Quality",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "3 - Low Health Risk",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "see more",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForecastBox(String temperature, String imagePath, String day) {
    return SizedBox(
      width: 82,
      height: 172,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF3E2D8F),
                  Color(0xFF533595),
                  Color(0xFF9D52AC),
                ],
                stops: [0.0, 0.2244, 1.0],
              ),
            ),
          ),
          // Temperature Text
          Positioned(
            top: 26,
            left: 0,
            right: 0,
            child: Text(
              temperature,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 29.71 / 20,
                letterSpacing: 0.47,
              ),
            ),
          ),
          // Weather Icon
          Positioned(
            top: 50,
            left: 8,
            child: Image.asset(
              "assets/images/$imagePath",
              width: 66,
              height: 66,
            ),
          ),
          // Day Text
          Positioned(
            top: 121,
            left: 0,
            right: 0,
            child: Text(
              day,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 29.71 / 20,
                letterSpacing: 0.47,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
