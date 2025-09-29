import 'package:flutter/material.dart';

void main() {
  runApp(const GrcApp());
}

class GrcApp extends StatelessWidget {
  const GrcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Reciprocal Colleges',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const GrcHomePage(),
    );
  }
}

class GrcHomePage extends StatefulWidget {
  const GrcHomePage({super.key});

  @override
  State<GrcHomePage> createState() => _GrcHomePageState();
}

class _GrcHomePageState extends State<GrcHomePage> {
  int _selectedIndex = 0;

  final List<String> _titles = [
    "COLLEGE OF COMPUTER STUDEIS",
    "ABOUT GRC",
    "ADMISSIONS",
    "CONTACT US"
  ];

  final List<IconData> _icons = [
    Icons.computer,
    Icons.info,
    Icons.school,
    Icons.contact_mail,
  ];

  final List<Widget> _pages = [
    // CCS PAGE
    Column(
      children: [
        const Text(
          "College of Computer Studies",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Image.network(
          "https://yt3.googleusercontent.com/_WLlGGp_Vd1PQLTLdmS-u1Md1REfdvg92KxNDrB9rxoNsrrRJUUAjQcbU4FadrQc0mnhlWAQ=w1707-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
          height: 450,
          fit: BoxFit.cover,
        ),

          SizedBox(height: 10),
          Text("The BS Information Technology program includes the study of the utilization of both hardware and software technologies involving planning, installing, customizing, operating, managing and administering; and maintaining information technology infrastructure that provides computing solutions to address the needs of an organization.",
          style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          height: 1.5,
          ),
          textAlign: TextAlign.left,
                ),
              ],
            ),

    // ABOUT PAGE
         Column(
      children: [
        const Text(
          "About Global Reciprocal Colleges",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 20),
        Image.network(
          "https://tse3.mm.bing.net/th/id/OIP.NaMUr9wQY69VhvCfcv6iDAHaC0?rs=1&pid=ImgDetMain&o=7&rm=3",
          height: 450,
          fit: BoxFit.cover,
        ),

        SizedBox(height: 10),
        Text("Global Reciprocal Colleges (GRC) is dedicated to excellence in education, touching hearts, renewing minds, and transforming lives.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1.5,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),

    // ADMISSIONS PAGE
      Column(
      children: [
        Text(
          "Admissions",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Image.network(
          "https://tse3.mm.bing.net/th/id/OIP.XSag7WjWs4y_BHpuKoX5HAHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
          height: 450,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Text("We welcome aspiring students to join our programs."
            "Scholarships and financial aid are available for qualified applicants./n"
            "Freshman Requirements"
            "- Form 137 / 138"
            "- Form 137 / 138"
            "- Good Moral Character"
            "- 2 pcs 2×2 & 1×1 photos"
            "- Birth certificate (PSA)",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1.5,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),

    // CONTACT PAGE
     Column(
      children: [
        Text(
          "Contact Us",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Image.network(
          "https://tse3.mm.bing.net/th/id/OIP.NJirBja9HzykXooeLkKgagHaDt?rs=1&pid=ImgDetMain&o=7&rm=3",
          height: 450,
          fit: BoxFit.cover,
        ),
      SizedBox(height: 10),
      Text("Address: 454 GRC Bldg., Rizal Ave. corner 9th Ave, East Grace Park, Caloocan City 1400 Metro Manila\n"
          "Admissions: 09345687213"
          "Email: admissions@grc.edu.ph"
          "Registrar: 8-452-2945",
        style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        height: 1.5,
        ),
        textAlign: TextAlign.left,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Global Reciprocal Colleges'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfile(),
            _buildMenu(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/016/071/650/original/grc-letter-logo-design-on-white-background-grc-creative-initials-circle-logo-concept-grc-letter-design-vector.jpg"), // Profile Placeholder
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Global Reciprocal Colleges",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Touching Hearts, Renewing Minds, Transforming Lives",
            style: TextStyle(fontSize: 14, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(_titles.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor:
                  _selectedIndex == index ? Colors.red : Colors.grey[300],
                  child: Icon(
                    _icons[index],
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  _titles[index],
                  style: TextStyle(
                    fontWeight: _selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}