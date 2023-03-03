import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: Bank()),
  ));
}

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Welcome"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 85,
                    color: Colors.red,
                  ),
                  Container(
                    height: 110,
                  ),
                ],
              ),
              Bankdatacard(), //title card
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 20),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Image(
                      width: 20,
                      height: 20,
                      image: NetworkImage(
                          "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                ),
                Text(
                  "WOULD YOU LIKE TO ?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(height: 250, child: BankBody()), //grid view details
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: const [
                Image(
                    width: 20,
                    height: 20,
                    image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "LAST TRANSACTIONS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(flex: 6, child: Bottomlist()), //Last Transaction list
        ],
      ),
    );
  }
}

class BankBody extends StatefulWidget {
  @override
  State<BankBody> createState() => _BankBodyState();
}

class _BankBodyState extends State<BankBody> {
  List listile = [
    "My Account",
    "Load eSawa",
    "Payment",
    "Fund Transfer",
    "Sheduled Pyment",
    "Scan to Pay"
  ];
  List iconsbank = [
    "https://cdn1.iconfinder.com/data/icons/digital-marketing-red/64/DISTRIBUTION_NETWORK-connector-mobile_phone-communications-share-512.png",
    "https://freefilehippo.com/wp-content/uploads/2020/02/eScan-Anti-Virus.png",
    "https://cdn1.iconfinder.com/data/icons/fintech-red/64/MOBILE_PAYMENT-online_payment-money-smartphone-transfer-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/SMARTPHONE-transfer-data-arrows-internet-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/QUEUE-duration-file_storage-transfer-time-512.png",
    "https://cdn3.iconfinder.com/data/icons/protection-and-security-red/64/QR_CODE-qr_code-electronics_-scan-digital-512.png"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Scaffold(
          body: Card(
            child: Container(
              width: 120,
              height: 100,
              child: Column(
                children: [
                  Image(
                      height: 50,
                      width: 50,
                      image: NetworkImage(iconsbank[index])),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(listile[index],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 6,
    );
  }
}

class Bankdatacard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 15,
      left: 15,
      child: SizedBox(
        height: 160,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text(
                          "MOHANLAL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Wrap(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "NPR.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.indigoAccent),
                              ),
                              const Text(
                                "1,00,999.35",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.indigoAccent),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Color.fromARGB(255, 7, 13, 13),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(
                          "281685854589641",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bottomlist extends StatelessWidget {
  List amount = [
    "NPR.10,000.00",
    "NPR.11,000.00",
    "NPR.12,020.00",
    "NPR.16,300.00",
    "NPR.11,020.00",
    "NPR.12,000.00",
    "NPR.14,500.00"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: Card(
            child: Container(
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text('''
    CWDR/
    974884/9874533147487'''),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "10-6-2022",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(amount[index])
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 7,
    );
  }
}
