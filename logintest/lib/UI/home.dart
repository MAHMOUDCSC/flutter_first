import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:logintest/main.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return testapp();
  }
}

/*
class _Services extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return MyStatefulWidget();
    return testapp();
  }
}
*/
class testapp extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int _selectedIndex = 0;

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("دليل الخدمات"),
        backgroundColor: Colors.green.shade700,
      ),
      body: new Container(
        child: MyStatefulWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade700,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.design_services,
            ),
            label: 'خدمات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.request_quote_outlined,
            ),
            label: 'الطلبات',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.login,
            ),
            label: 'تسجيل',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.white,
        onTap: null,
      ),
    );
  }
}

// stores ExpansionPanel state information
class ExpandedValue {
  String headerValue1;
  String titel;
  ExpandedValue(this.titel, this.headerValue1);
}

class Item {
  Item(
    this.index,
    this.expandedValue,
    this.headerValue,
  );

  int index;
  List<ExpandedValue> expandedValue = [];
  String headerValue;
  bool isExpanded = false;
}

List<Item> generateItems(int numberOfItems) {
  List<Item> data = [];
  List<ExpandedValue> data1 = [];
  List<ExpandedValue> data2 = [];
  List<ExpandedValue> data3 = [];

  data1.add(new ExpandedValue(
    "منح/تجديد شهادة جودة",
    "تكمن أهمية الحصول على شهادة الجودة في أنها وسيلة لتحقيق الجودة الشاملة التي تعتبر لغة العصر ومفتاح النجاح وتلبية رغبات المستهلكpsphoto.png، باعتبارها دليلاً على تحقيق المنتجات لمبادئ الصحة والسلامة وأنها أنتجت وفق معايير وطرق التصنيع الجيد، بالإضافة إلى أنها مطابقة للمواصفات و / أو التعليمات الفنية الإلزامية الفلسطينية.",
  ));
  data1.add(new ExpandedValue(
    "منح/تجديد شهادة اشراف",
    "تكمن أهمية الحصول على شهادة الإشراف باعتبارها دليلاً على مطابقة المنتجات للمواصفات و / أو التعليمات الفنية الإلزامية الفلسطينية، وهناك عدة فوائد يمكن تحقيقها من خلال الحصول على شهادة الإشراف.",
  ));
  data1.add(new ExpandedValue(
    "منح/تجديد شهادة حلال",
    "تكمن الاهمية في الحصول على شهادة الحلال في انها وسيلة لتحقيق معايير الشريعة الاسلامية لتلبية رغبات فئة كبيرة من المستهلكين باعتبارها دليلا على تطبيق متطلبات الشريعة الاسلامية وضمان السلامة الغذائية حيث تقوم مؤسسة المواصفات بإصدار شهادة الحلال بناء على مواصفات فلسطينية تتوائم مع المواصفات الدولية لمنح مثل هذه الشهادة.",
  ));
  data.add(new Item(1, data1, "خدمات منح الشهادات"));

  data2.add(new ExpandedValue(
    "معايرة الموازين التجارية",
    "معايرة الموازين التجارية المستخدمة في المصانع والمختبرات للتأكد من دقة نتائج القياس لضمان جودة المنتج والفحوصات والتي تسهم في دعم وتطوير الاقتصاد الفلسطيني، وذلك بناءً على طلب تلك الجهات مقابل رسوم محددة.​",
  ));
  data2.add(new ExpandedValue(
    "معايرة اجهزة قياس قوى الشد والضغط للمواد",
    "معايرة اجهزة قياس قوى الشد والضغط للمواد المستخدمة في المصانع والمختبرات للتأكد من دقة نتائج القياس لضمان جودة المنتج والفحوصات والتي تسهم في دعم وتطوير الاقتصاد الفلسطيني، وذلك بناءً على طلب تلك الجهات مقابل رسوم محددة.",
  ));

  data2.add(new ExpandedValue(
    "معايرة مضخات الوقود",
    "معايرة مضخات الوقود بشكل اجباري ودوري وفق القانون مقابل رسوم محددة.",
  ));
  data3.add(new ExpandedValue(
    "مختبر الاسمنت",
    "",
  ));
  data3.add(new ExpandedValue(
    "فحص تشغيل الغاز المركزي",
    "تقوم مؤسسة المواصفات والمقاييس الفلسطينية بخدمة الفحص التشغيلي الأولي للأنظمة التشغيلية (الغاز المركزي)، من خلال كادر مؤهل في مجالات التخصص المختلفة، بالتعاون مع الجهات المعنية، وذلك حسب التعليمات الفنية الإلزامية والمواصفات ذات العلاقة، لضمان أمان وسلامة المواطنين والحفاظ على ممتلكاتهم.",
  ));

  data.add(new Item(2, data2, "خدمات مختبرات المعايرة"));
  data.add(new Item(3, data3, "خدمات الفحص والتفتيش"));

  return data;
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
                title: Column(
              children: [
                new Text(item.headerValue),
              ],
            ) //Text(item.headerValue),
                );
          },
          body: new Column(
            children: item.expandedValue
                .toList()
                .map((value) => new Column(
                      children: <Widget>[_fun(value)],
                    ))
                .toList(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  Widget _fun(ExpandedValue expandedValue) {
    return new Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Align(
            alignment: Alignment.topRight,
            child: Stack(
              // constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0.5, 0, 0),
                  //color: Colors.green,
                  child:
                      //padding: EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                      RaisedButton(
                          color: Colors.green,
                          child: Text('الطلب الالكتروني',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          onPressed: () {
                            print('Pressed');
                          }),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(120, 6, 5, 0),
                    child: Container(
                      //color: Colors.red,
                      //constraints: BoxConstraints(maxWidth: 200),
                      alignment: Alignment.topRight,
                      child: Text(
                        expandedValue.titel,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    )),
              ],
            )),
        Align(
          alignment: Alignment.topRight,
          child: new Text(expandedValue.headerValue1),
        ),
        const Divider(
          height: 20,
          thickness: 5,
          indent: 0,
          endIndent: 0,
        ),
      ],
    );
  }
}

class expandedValue extends StatelessWidget {
  String name = "mahmoud";
  int index = 0;
  expandedValue(this.index, this.name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
        //   mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// height: 200.0,
          SizedBox(
              // height:atuo ,
              child: Container(
            child: Align(
              alignment: Alignment.topRight,
              child: new Text(name),
            ),
          )),
          const Divider(
            height: 20,
            thickness: 3,
            indent: 0,
            endIndent: 0,
          ),
        ]);
  }
}
