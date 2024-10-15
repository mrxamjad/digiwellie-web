import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';

class Review {
  final String name;
  final String position;
  final String feedback;
  final String imagePath;
  final int rating;

  Review({
    required this.name,
    required this.position,
    required this.feedback,
    required this.imagePath,
    required this.rating,
  });
}

class ReviewSection extends StatefulWidget {
  const ReviewSection({Key? key}) : super(key: key);

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _carouselTimer;

  final List<Review> reviews = [
    Review(
      name: "Amjad Ali",
      position: "Software Developer",
      feedback:
          "Without a doubt, I highly recommend DigiWellie as one of the top web design and digital marketing agencies. It's easily one of the best I've encountered so far.",
      imagePath: "assets/images/review1.png",
      rating: 5,
    ),
    Review(
      name: "Sarah Khan",
      position: "Product Manager",
      feedback:
          "Their team was professional, responsive, and delivered outstanding results. I'm really satisfied with the quality of work and the impact it has had on our business.",
      imagePath: "assets/images/review2.png",
      rating: 5,
    ),
    Review(
      name: "Michael Adams",
      position: "UI/UX Designer",
      feedback:
          "DigiWellie's design and execution exceeded my expectations. They have a talented and innovative team that truly understands modern web design principles.",
      imagePath: "assets/images/review3.png",
      rating: 4,
    ),
    Review(
      name: "Emily Watson",
      position: "Content Strategist",
      feedback:
          "I've worked with a few agencies, and DigiWellie stands out. Their attention to detail and understanding of client needs is unmatched. They delivered a content strategy that truly resonates with our audience.",
      imagePath: "assets/images/review4.png",
      rating: 5,
    ),
    Review(
      name: "John Doe",
      position: "Marketing Consultant",
      feedback:
          "The results were amazing. My website's traffic increased significantly thanks to their marketing strategies. Their SEO expertise is truly impressive.",
      imagePath: "assets/images/review5.png",
      rating: 4,
    ),
    Review(
      name: "Lisa Chen",
      position: "E-commerce Manager",
      feedback:
          "DigiWellie transformed our online store. The user experience improvements they implemented led to a notable increase in our conversion rates. Highly recommended for e-commerce businesses.",
      imagePath: "assets/images/review6.png",
      rating: 5,
    ),
    Review(
      name: "Robert Johnson",
      position: "Small Business Owner",
      feedback:
          "As a small business owner, I was hesitant about investing in professional web design. DigiWellie not only created a beautiful website but also provided valuable insights that helped grow my online presence.",
      imagePath: "assets/images/review7.png",
      rating: 5,
    ),
    Review(
      name: "Sophia Rodriguez",
      position: "Digital Marketing Specialist",
      feedback:
          "Their approach to digital marketing is data-driven and effective. They helped us optimize our campaigns, resulting in better ROI. Their team is always up-to-date with the latest trends.",
      imagePath: "assets/images/review8.png",
      rating: 4,
    ),
    Review(
      name: "David Kim",
      position: "Tech Startup Founder",
      feedback:
          "DigiWellie understood the unique challenges of our startup. They created a website that perfectly communicates our vision and has been instrumental in attracting investors and early adopters.",
      imagePath: "assets/images/review9.png",
      rating: 5,
    ),
    Review(
      name: "Emma Thompson",
      position: "Non-profit Director",
      feedback:
          "Working with DigiWellie was a game-changer for our non-profit. They created a website that not only looks great but also effectively communicates our mission. We've seen a significant increase in donations and volunteer sign-ups.",
      imagePath: "assets/images/review10.png",
      rating: 5,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _carouselTimer?.cancel();
    super.dispose();
  }

  void _startAutoSlide() {
    _carouselTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_currentPage < reviews.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      setState(() {});
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return _buildDesktopLayout();
        } else if (constraints.maxWidth > 600) {
          return _buildTabletLayout();
        } else {
          return _buildMobileLayout();
        }
      },
    );
  }

  Widget _buildDesktopLayout() {
    return Column(
      children: [
        const SizedBox(height: 50),
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 50),
        _buildTitle(),
        const SizedBox(height: 50),
        _buildFeedback(),
        const SizedBox(height: 50),
        _buildReviewCarousel(),
      ],
    );
  }

  Widget _buildTabletLayout() {
    return Column(
      children: [
        const SizedBox(height: 30),
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 30),
        _buildTitle(),
        const SizedBox(height: 30),
        _buildFeedback(),
        const SizedBox(height: 30),
        _buildReviewCarousel(),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        const SizedBox(height: 20),
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 20),
        _buildTitle(),
        const SizedBox(height: 20),
        _buildFeedback(),
        const SizedBox(height: 20),
        _buildReviewCarousel(),
      ],
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Text(
          "Meet the People",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width > 600 ? 35 : 24,
          ),
        ),
        Text(
          "We are Working With",
          style: TextStyle(
            color: Clr.black1A202C,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width > 600 ? 35 : 24,
          ),
        ),
      ],
    );
  }

  Widget _buildFeedback() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width > 1200 ? 300 : 20,
      ),
      child: Text(
        reviews[_currentPage].feedback,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Clr.black1718096,
          fontWeight: FontWeight.normal,
          fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 14,
        ),
      ),
    );
  }

  Widget _buildReviewCarousel() {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        controller: _pageController,
        itemCount: reviews.length,
        onPageChanged: (indx) {
          setState(() {});
        },
        itemBuilder: (context, index) {
          final review = reviews[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.width > 600 ? 40 : 30,
                backgroundImage: AssetImage(review.imagePath),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  review.rating,
                  (index) => Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                    size: MediaQuery.of(context).size.width > 600 ? 24 : 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                review.name,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 14 : 12,
                  color: Clr.black1718096,
                ),
              ),
              Text(
                review.position,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 14 : 12,
                  color: Clr.black1718096,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
