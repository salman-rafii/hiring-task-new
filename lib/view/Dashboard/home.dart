import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String id = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//String selectedValue = 'New Project';
final List<String> dropdownItems = ['New Project', 'My Projects'];
String? value;

class _HomeState extends State<Home> {
  final List<String> items = List<String>.generate(
    10,
    (index) => "Item $index",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(221, 44, 43, 43)),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(221, 44, 43, 43),
        child: Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                ),
                accountName: Text('Madiha Faisal'),
                accountEmail: Text('Senior Research Associate'),
              ),
              // ListTile(
              //   leading: const Icon(Icons.search_rounded),
              //   title: const Text('Research'),
              //   //trailing: DropdownButton(items: 2, onChanged: (){}),
              //   onTap: () {
              //     //Navigator.pushNamed(context, Home.id);
              //   },
              // ),
              ListTile(
                title: Row(
                  children: [
                    Image.asset('assets/research.png', height: 30),
                    const SizedBox(width: 10),
                    const Text(
                      'Research',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                trailing: DropdownButton<String>(
                  //value: selectedValue,
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                  items: dropdownItems.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) => value,

                  //underline: Container(),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/team.png', height: 30),
                title: const Text(
                  'Team',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/lab.png', height: 30),
                title: const Text(
                  'Laboratory',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/task.png', height: 30),
                title: const Text(
                  'Task',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/data.png', height: 30),
                title: const Text(
                  'Data',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/d.png', height: 30),
                title: const Text(
                  'Discussion',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/pub.png', height: 30),
                title: const Text(
                  'Publish',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Image.asset('assets/e.png', height: 30),
                title: const Text(
                  'Expense',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              ListTile(
                leading: Image.asset('assets/s.png', height: 30),
                title: const Text(
                  'Setting',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/t.png', height: 30),
                title: const Text(
                  'Ticketing',
                  style: TextStyle(color: Colors.white),
                ),
                // onTap: () {
                //   Navigator.pushNamed(context, NeedHelp.id);
                // },
              ),
              Container(
                height: 50,
                color: Colors.black,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: Colors.grey),
                    SizedBox(width: 20),
                    Text('Sign Out', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      body: Container(
        // height: 180,
        color: const Color.fromARGB(221, 44, 43, 43),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Test Project with Madiha',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        //*********first container******* */
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/team.png',
                                    height: 40,
                                    color: Colors.black,
                                  ),
                                  const Text(
                                    '1125',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'User',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                              const Text(
                                'Involved',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),

                        // ****** Second container *******
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/eq.png',
                                    height: 40,
                                    color: Colors.black,
                                  ),
                                  const Text(
                                    '1125',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Equipment',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                              const Text(
                                'Available',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),

                        // ****** third container *******
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/tc.png',
                                    height: 40,
                                    color: Colors.black,
                                  ),
                                  const Text(
                                    '1125',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Task',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                              const Text(
                                'Completed',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),

                        // ****** fourth container *******
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/team.png',
                                    height: 40,
                                    color: Colors.black,
                                  ),
                                  const Text(
                                    '1125',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'User',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                              const Text(
                                'Involved',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
