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
  dynamic number1 = 0;
  dynamic number2 = 0;
  dynamic sum = 0;
  dynamic r1, r2;
  dynamic finalNumber = 0;
  String finalResult = "";
  late TextEditingController _maleNameController;
  late TextEditingController _femaleNameController;

  @override
  void initState() {
    super.initState();
    _maleNameController = TextEditingController();
    _femaleNameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _maleNameController.dispose();
    _femaleNameController.dispose();
  }

  void checkNumber() {
    setState(() {
      if (maleName.contains("A") ||
          maleName.contains("K") ||
          maleName.contains("U")) {
        number1 = number1 + 1;
      }
      if (maleName.contains("B") ||
          maleName.contains("S") ||
          maleName.contains("J")) {
        number1 = number1 + 2;
      }
      if (maleName.contains("C") ||
          maleName.contains("L") ||
          maleName.contains("T")) {
        number1 = number1 + 3;
      }
      if (maleName.contains("D") ||
          maleName.contains("N") ||
          maleName.contains("X")) {
        number1 = number1 + 4;
      }
      if (maleName.contains("E") ||
          maleName.contains("M") ||
          maleName.contains("W")) {
        number1 = number1 + 5;
      }
      if (maleName.contains("F") ||
          maleName.contains("O") ||
          maleName.contains("V")) {
        number1 = number1 + 6;
      }
      if (maleName.contains("G") ||
          maleName.contains("Q") ||
          maleName.contains("Z")) {
        number1 = number1 + 7;
      }
      if (maleName.contains("H") ||
          maleName.contains("P") ||
          maleName.contains("Y")) {
        number1 = number1 + 8;
      }
      if (maleName.contains("I") || maleName.contains("R")) {
        number1 = number1 + 9;
      }
      if (femaleName.contains("A") ||
          femaleName.contains("K") ||
          femaleName.contains("U")) {
        number2 = number2 + 1;
      }
      if (femaleName.contains("B") ||
          femaleName.contains("S") ||
          femaleName.contains("J")) {
        number2 = number2 + 2;
      }
      if (femaleName.contains("C") ||
          femaleName.contains("L") ||
          femaleName.contains("T")) {
        number2 = number2 + 3;
      }
      if (femaleName.contains("D") ||
          femaleName.contains("N") ||
          femaleName.contains("X")) {
        number2 = number2 + 4;
      }
      if (femaleName.contains("E") ||
          femaleName.contains("M") ||
          femaleName.contains("W")) {
        number2 = number2 + 5;
      }
      if (femaleName.contains("F") ||
          femaleName.contains("O") ||
          femaleName.contains("V")) {
        number2 = number2 + 6;
      }
      if (femaleName.contains("G") ||
          femaleName.contains("Q") ||
          femaleName.contains("Z")) {
        number2 = number2 + 7;
      }
      if (femaleName.contains("H") ||
          femaleName.contains("P") ||
          femaleName.contains("Y")) {
        number2 = number2 + 8;
      }
      if (femaleName.contains("I") || femaleName.contains("R")) {
        number2 = number2 + 9;
      }
      sum = number1 + number2;
      if (sum > 10) {
        r1 = sum % 10;
        r2 = sum / 10;
        finalNumber = r1 + r2;
      }
      if (finalNumber == 1) {
        finalResult = result[0];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 2) {
        finalResult = result[1];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 3) {
        finalResult = result[2];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 4) {
        finalResult = result[3];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 5) {
        finalResult = result[4];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 6) {
        finalResult = result[5];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 7) {
        finalResult = result[6];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 8) {
        finalResult = result[7];
        number1 = 0;
        number2 = 0;
      } else if (finalNumber == 9) {
        finalResult = result[8];
        number1 = 0;
        number2 = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bói Tình Yêu",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Bói Toán"),
          ),
          backgroundColor: Colors.teal[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _maleNameController,
                  onChanged: (text) {
                    setState(() {
                      maleName = text;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.male),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _femaleNameController,
                  onChanged: (text) {
                    setState(() {
                      femaleName = text;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.female),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[300],
                  padding: const EdgeInsets.all(10),
                ),
                onPressed: checkNumber,
                child: const Text(
                  "Xem Kết Quả",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Text(finalResult.toString()),
            ],
          ),
        ),
      ),
    );
  }
}

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
