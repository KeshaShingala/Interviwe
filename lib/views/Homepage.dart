
import 'package:flutter/material.dart';
import 'package:kesha/views/second_page.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  double heigh = 0;
  int weight = 0;
  int age = 0;

  double total = 0.0;
  double height_Meter = 0;
  bool maleSelected = false;
  bool femaleSelected = false;

  double bmi = 0;
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weightController.text = weight.toString();
    heightController.text = age.toString();
  }


  TextStyle font_size_20_Color_white = TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w700
  );


  TextStyle font_size_40_bold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  BoxDecoration containersDecoration = BoxDecoration(
    color: Color(0xFF1D1E33),
    borderRadius: BorderRadius.circular(10),
  );
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF090E21),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "BMI Calculator",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      // TODO : 1st One
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              femaleSelected = !femaleSelected;
                              maleSelected = false;
                            });
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xFF1D1E33),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: (femaleSelected)
                                      ? Image.asset(
                                    "assets/images/woman.png",
                                    height: 120,
                                    width: 120,
                                    color: Color(0xFFEB1555),
                                  )
                                      : Image.asset(
                                    "assets/images/woman.png",
                                    height: 120,
                                    width: 120,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: (femaleSelected)
                                      ? Text(
                                    "Female",
                                    style: font_size_20_Color_white.copyWith(color: Color(0xFFEB1555)),
                                  )
                                      : Text(
                                    "Female",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      // TODO : 2nd One
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              maleSelected = !maleSelected;
                              femaleSelected = false;
                            });
                          },
                          child: Container(
                            height:200,
                            decoration: containersDecoration.copyWith(
                              color: Color(0xFF3B3C4D),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: (maleSelected)
                                      ? Image.asset(
                                    "assets/images/male.png",
                                    height: 120,
                                    width: 120,
                                  )
                                      : Image.asset(
                                    "assets/images/male.png",
                                    height: 120,
                                    width: 120,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: (maleSelected)
                                      ? Text(
                                    "Male",
                                    style: font_size_20_Color_white.copyWith(
                                      color: Color(0xFFEB1555),
                                    ),
                                  )
                                      : Text("Male", style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // TODO : 3rd One
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Text(
                            "HEIGHT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "${heigh.toInt().toString()}",
                                style: font_size_40_bold.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: " cm",
                                style: TextStyle(
                                  color: Color(0xFF626473),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                            trackHeight: 1,
                            activeTrackColor: Color(0xFFF5C1D1).withOpacity(0.4),
                            inactiveTrackColor: Color(0xFF555555),
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 7.5,
                            ),
                          ),
                          child: Slider(
                            min: 0,
                            max: 300,
                            value: heigh,
                            thumbColor: Color(0xFFEB1555),
                            onChanged: (sliderData) {
                              heigh = sliderData;
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // LAST ROW......

                  Row(
                    children: [
                      // TODO : 4th One
                      Expanded(
                        child: Container(
                          height: 220,
                          decoration: BoxDecoration(
                            color:  Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "weight",
                                  style: font_size_20_Color_white.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              Container(
                                width: 90,
                                child: TextFormField(
                                  controller: weightController,
                                  textAlign: TextAlign.center,
                                  style: font_size_40_bold.copyWith(
                                    fontSize: 50,
                                  ),
                                  onFieldSubmitted: (data) {
                                    weight = int.parse(data);
                                    setState(() {});
                                  },
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    border: InputBorder.none,
                                    hintStyle: font_size_40_bold.copyWith(
                                      fontSize: 50,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: FloatingActionButton(
                                        backgroundColor: Color(0xFF4C4F5E),
                                        onPressed: () {
                                          if (weight > 0) {
                                            weight--;
                                            weightController.text = weight.toString();
                                            setState(() {});
                                          } else {}
                                        },
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: FloatingActionButton(
                                        backgroundColor: Color(0xFF6E6F7A),
                                        onPressed: () {
                                          weight++;
                                          weightController.text = weight.toString();
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Color(0xFFF67F7A),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      // TODO : 5th One
                      Expanded(
                        child: Container(
                          height: 220,
                          decoration: BoxDecoration(
                            color: Color(0xFF1D1E33),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Age",
                                  style: font_size_20_Color_white.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                                child: TextFormField(
                                  controller: heightController,
                                  textAlign: TextAlign.center,
                                  style: font_size_40_bold.copyWith(
                                    fontSize: 50,
                                  ),
                                  onFieldSubmitted: (data) {
                                    age = int.parse(data);
                                    // log(Hght.toString(),name: "Hii");
                                    setState(() {});
                                  },
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    border: InputBorder.none,
                                    hintStyle: font_size_40_bold.copyWith(
                                      fontSize: 50,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: FloatingActionButton(
                                        backgroundColor: Color(0xFF4C4F5E),
                                        onPressed: () {
                                          if (age > 0) {
                                            age--;
                                            heightController.text = age.toString();
                                            setState(() {});
                                          } else {}
                                        },
                                        child: const Icon(Icons.remove),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: FloatingActionButton(
                                        backgroundColor: Color(0xFF6E6F7A),
                                        onPressed: () {
                                          age++;
                                          heightController.text = age.toString();
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color:  Color(0xFFF67F7A),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                if (femaleSelected == true || maleSelected == true) {
                  if (heigh > 0 && age > 0 && int.parse(weightController.text) > 0) {
                    height_Meter = heigh / 100;
                    bmi = weight / ( height_Meter *  height_Meter);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CalculatedBMI(bmi: bmi),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Enter valid parameters",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        backgroundColor: Color(0xFF090E21),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Select Male / Female",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor: Color(0xFF090E21),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFEB1555),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color:  Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
