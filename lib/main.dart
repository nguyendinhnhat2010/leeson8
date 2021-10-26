import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  String maleName = "";
  String femaleName = "";

  int number1 = 0;
  int number2 = 0;
  int sum = 0;

  String finalResult = "";

  TextEditingController maleController = TextEditingController();
  TextEditingController femaleController = TextEditingController();
  List<String> result = [
    "Hai người chính là những người bạn đời tri kỷ của nhau. Dù không dùng đến lời nói hai bạn vẫn có thể hiểu được tâm tư của đối phương Mối tình của hai người ngọt ngào mặn nồng khiến mọi người xung quanh phải ngưỡng mộ.",
    "Mối tình của hai người dù thắm thiết nhưng sẽ gặp phải trở ngại. Dù hai người luôn muốn dành trọn cả đời ở bên đối phương nhưng họ vẫn có thể phải xa nhau vì sự phản đối của gia đình. Để bảo vệ tình yêu, cặp đôi này phải tỏ ra mạnh mẽ hơn nữa.",
    "Đây là cặp đôi thanh mai trúc mã, đi từ tình bạn trong sáng ngây thơ đến tình yêu vĩnh cửu. Chính vì thế, họ có thể thấu hiểu đối phương đến từng chân tơ kẽ tóc. Cặp đôi này sẽ gặp khó khăn khi phải vượt qua ranh giới giữa tình bạn và tình yêu.",
    "Mối lương duyên tiền định kéo dài trong nhiều kiếp chính là nguyên nhân khiến hai bạn đến bên nhau trong kiếp này. Chính vì thế, cặp đôi này có sự hòa hợp cả về thể xác lẫn linh hồn.",
    "Mối tình của hai người có nguy cơ tan vỡ bởi sự chen ngang của người thứ ba. Để tránh bị người khác chia rẽ, cặp đôi này phải dành nhiều thời gian tâm tình, hẹn hò để tăng mức độ thấu hiểu lẫn nhau.",
    "Ngay từ cái nhìn đầu tiên, hai người đã xác định đối phương là người bạn đời của mình. Dù chỉ mới gặp nhau, cặp đôi này đã thể hiện sự đồng cảm sâu sắc.",
    "Hai người đến với nhau vì sự hòa hợp về chí hướng và lý tưởng trong cuộc sống. Cặp đôi này sẽ cùng nhau phấn đấu để biến giấc mơ của cả hai trở thành sự thật.",
    "Mức độ ăn ý của hai người ở mức khá cao. Cặp đôi này luôn muốn dành cho nhau những tình cảm chân thành ấm áp nhất. Hai người có thể sống bên nhau đều đầu bạc răng nong.",
    "Tâm hồn của hai người không hướng về nhau nên khó đạt được sự hòa hợp trong mối quan hệ. Để duy trì mối tình bền lâu, cả hai phải cho nhau cơ hội để tìm hiểu về tâm tư, nhu cầu của đối phương."
  ];

  @override
  void initState() {
    super.initState();
    maleController = TextEditingController();
    femaleController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    maleController.dispose();
    femaleController.dispose();
  }

  void checkNum() {
    number1 = 0;
    number2 = 0;
    sum = 0;

    setState(() {
      List<String> charMale = maleName.split("");
      List<String> charFeMale = femaleName.split("");
      for (int i = 0; i < charMale.length; i++) {
        if (charMale[i] == "A" || charMale[i] == "K" || charMale[i] == "U") {
          number1 = number1 + 1;
        }
        if (charMale[i] == "B" || charMale[i] == "S" || charMale[i] == "J") {
          number1 = number1 + 2;
        }
        if (charMale[i] == "C" || charMale[i] == "L" || charMale[i] == "T") {
          number1 = number1 + 3;
        }
        if (charMale[i] == "D" || charMale[i] == "N" || charMale[i] == "X") {
          number1 = number1 + 4;
        }
        if (charMale[i] == "E" || charMale[i] == "M" || charMale[i] == "W") {
          number1 = number1 + 5;
        }
        if (charMale[i] == "F" || charMale[i] == "O" || charMale[i] == "V") {
          number1 = number1 + 6;
        }
        if (charMale[i] == "G" || charMale[i] == "Q" || charMale[i] == "Z") {
          number1 = number1 + 7;
        }
        if (charMale[i] == "H" || charMale[i] == "P" || charMale[i] == "Y") {
          number1 = number1 + 8;
        }
        if (charMale[i] == "I" || charMale[i] == "R") {
          number1 = number1 + 9;
        }
      }

      for (int i = 0; i < charFeMale.length; i++) {
        if (charFeMale[i] == "A" ||
            charFeMale[i] == "K" ||
            charFeMale[i] == "U") {
          number2 = number2 + 1;
        }
        if (charFeMale[i] == "B" ||
            charFeMale[i] == "S" ||
            charFeMale[i] == "J") {
          number2 = number2 + 2;
        }
        if (charFeMale[i] == "C" ||
            charFeMale[i] == "L" ||
            charFeMale[i] == "T") {
          number2 = number2 + 3;
        }
        if (charFeMale[i] == "D" ||
            charFeMale[i] == "N" ||
            charFeMale[i] == "X") {
          number2 = number2 + 4;
        }
        if (charFeMale[i] == "E" ||
            charFeMale[i] == "M" ||
            charFeMale[i] == "W") {
          number2 = number2 + 5;
        }
        if (charFeMale[i] == "F" ||
            charFeMale[i] == "O" ||
            charFeMale[i] == "V") {
          number2 = number2 + 6;
        }
        if (charFeMale[i] == "G" ||
            charFeMale[i] == "Q" ||
            charFeMale[i] == "Z") {
          number2 = number2 + 7;
        }
        if (charFeMale[i] == "H" ||
            charFeMale[i] == "P" ||
            charFeMale[i] == "Y") {
          number2 = number2 + 8;
        }
        if (charFeMale[i] == "I" || charFeMale[i] == "R") {
          number2 = number2 + 9;
        }
      }
      sum = number1 + number2;
      while (sum > 10) {
        sum = int.parse(sum.toString()[0]) + int.parse(sum.toString()[1]);
      }
      finalResult = result[sum - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          title: const Center(
            child: Text("Bói Tình Yêu"),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: TextFormField(
                    controller: maleController,
                    onChanged: (value) {
                      setState(() {
                        maleController.value = TextEditingValue(
                            text: value.toUpperCase(),
                            selection: maleController.selection);
                        maleName = maleController.text;
                      });
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.male),
                      hintText: "Male Name",
                      labelText: "Name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3.0, color: Colors.teal),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: TextFormField(
                    controller: femaleController,
                    onChanged: (value) {
                      setState(() {
                        femaleController.value = TextEditingValue(
                            text: value.toUpperCase(),
                            selection: femaleController.selection);
                        femaleName = femaleController.text;
                      });
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.female),
                      hintText: "Female Name",
                      labelText: "Name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 3.0),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text(
                  "Xem Kết Quả",
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: checkNum,
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
              ),
              Expanded(
                flex: 2,
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Text(
                    finalResult,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
