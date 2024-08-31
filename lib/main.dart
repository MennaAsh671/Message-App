import 'package:flutter/material.dart';

void main() {
  runApp(const Message());
}

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  void signIn(){}
  void signUp(){}

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        debugShowCheckedModeBanner:false,
      home: Scaffold(
          backgroundColor :Colors.grey[300],
        appBar :AppBar(
          title: const Text("Message", style: TextStyle(fontSize: 23)),
          centerTitle:true
        ),
          body: PageView (
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  ListView(
                 children: ListTile.divideTiles(context: context , tiles: [
                   const ListTile(
                   leading: CircleAvatar(
                    backgroundImage:
                     NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                  ), //first item n the row
                    title:Row(
                      children: [
                        Text(
                            "Laurent ",
                            style: TextStyle(fontSize: 25)
                        ),
                        Text(
                            " 10:20 ",
                            style: TextStyle(fontSize: 20)
                        ),
                      ],
                    ),
                    // title of the row
                   subtitle:Text(
                      "How about meeting tomorrow",
                      style: TextStyle(fontSize: 23)
                  ), // shaded word
                   trailing: Icon(Icons.send), // last item
                 ),
                   const ListTile(
                     minVerticalPadding: 16,
                    leading: CircleAvatar(
                      backgroundImage:
                      NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaeoYE6bhyP2rutaWgKJbIUJZhkvTyo4gazN1Aok8MyI2vxn-GrQTHzPEiQtg6d1BP0zQ&usqp=CAU'),
                    ), //first item n the row
                    title:Row(
                      children: [
                        Text(
                            "Isaac ",
                            style: TextStyle(fontSize: 25)
                        ),
                        Text(
                            " 15:30",
                            style: TextStyle(fontSize: 20)
                        ),
                      ],
                    ),
                    // title of the row
                    subtitle:Text(
                        "Flutter Just released 1.0 officially.Should I go for it?",
                        style: TextStyle(fontSize: 23)
                    ), // shaded word
                    trailing: Icon(Icons.send), // last item
                  ),
                   const ListTile(
                     leading: CircleAvatar(
                       backgroundImage:
                       NetworkImage('https://media.istockphoto.com/id/478948986/photo/mature-woman-smiling-outdoors.jpg?s=612x612&w=0&k=20&c=aP-w8oRTH1_S9QWM5_8wDJdgH9ZEsp99Z3dkAFnBtz0='),
                     ),
                     title:Row(
                       children: [
                         Text(
                             "Marie ",
                             style: TextStyle(fontSize: 25)
                         ),
                         Text(
                             " 20:18 ",
                             style: TextStyle(fontSize: 20)
                         ),
                       ],
                     ),
                     // title of the row
                     subtitle:Text(
                         "Hi, How is it going?",
                         style: TextStyle(fontSize: 23)
                     ), // shaded word
                     trailing: Icon(Icons.send), // last item
                   ),
                   const   ListTile(
                     leading: CircleAvatar(
                       backgroundImage:
                       NetworkImage('https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                     ), //first item n the row
                     title:Row(
                       children: [
                         Text(
                             "Mark ",
                             style: TextStyle(fontSize: 25)
                         ),
                         Text(
                             "19:35 ",
                             style: TextStyle(fontSize: 20)
                         ),
                       ],
                     ),
                     // title of the row
                     subtitle:Text(
                         "I wasn't aware of that..., let me check",
                         style: TextStyle(fontSize: 23)
                     ), // shaded word
                     trailing: Icon(Icons.send), // last item
                   ),
                   const ListTile(
                     leading: CircleAvatar(
                       backgroundImage:
                       NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                     ), //first item n the row
                     title:Row(
                       children: [
                         Text(
                             "Clark ",
                             style: TextStyle(fontSize: 25)
                         ),
                         Text(
                             " 5:45 ",
                             style: TextStyle(fontSize: 20)
                         ),
                       ],
                     ),
                     // title of the row
                     subtitle:Text(
                         "Tomorrow Morning",
                         style: TextStyle(fontSize: 23)
                     ), // shaded word
                     trailing: Icon(Icons.send), // last item
                   ),
                 ]
                ).toList(),
              ),
              ),
                Column( //Sign in
                  children:[
                    const SizedBox(height:50),
                    //Logo
                    const Icon(Icons.lock,size:100),
                    const SizedBox(height:40),

                    const Text("Welcome Back..",style :TextStyle(fontSize:30)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField( //Username
                          decoration : InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.white54) ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.white12) ),
                              hintText:"Username"
                          ),
                        obscureText:false

                      ),
                    ),
                    const SizedBox(height:15),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField( //password
                        decoration : InputDecoration(
                           enabledBorder: OutlineInputBorder(
                            borderSide:BorderSide(color: Colors.white54) ),
                           focusedBorder: OutlineInputBorder(
                                borderSide:BorderSide(color: Colors.white12) ),
                            hintText:"Password"
                        ),
                          obscureText:true

                      ),
                    ),

                    const SizedBox(height:5),
                    //Forget Password
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                       child: Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: [
                          Text("Forgot Password?", style: TextStyle(fontSize: 15,color: Colors.grey)),
                        ],
                      ),
                    ),
                    //Sign in button
                     const SizedBox(height:5),
                     GestureDetector(
                       onTap:signIn,
                       child: Container(
                          height:100,
                          width:400,
                          padding: const EdgeInsets.all(25.0),
                          decoration : BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                          child:const Center(
                              child: Text("Sign In",style: TextStyle(fontSize: 25,color: Colors.white))
                          ),
                        ),
                     ),



                  ]


                ),
                 Column( //Sign Up
                      children:[
                        const SizedBox(height:50),
                        const Icon(Icons.lock,size:100),  //Logo
                        const SizedBox(height:50),
                        const Text("Welcome,",style :TextStyle(fontSize:30)),
                        const SizedBox(height:15),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField( //First Name
                            decoration : InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white54) ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white12) ),
                                hintText:"First Name"
                            ),
                              obscureText:false
                          ),
                        ),
                        const SizedBox(height:12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField( //Last Name
                            decoration : InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white54) ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white12) ),
                                hintText:"Last Name"
                            ),
                              obscureText:false
                          ),
                        ),
                        const SizedBox(height:12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField( //Email
                            decoration : InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white54) ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white12) ),
                                hintText:"Email"
                            ),
                              obscureText:false
                          ),
                        ),
                        const SizedBox(height:12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField( //Password
                            decoration : InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white54) ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white12) ),
                                hintText:"Password"
                            ),
                              obscureText:true
                          ),
                        ),
                        const SizedBox(height:12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField( //Confirm password
                            decoration : InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white54) ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:BorderSide(color: Colors.white12) ),
                                hintText:"Confirm password"
                            ),
                              obscureText:true
                          ),
                        ),
                        const SizedBox(height:20),
                        //Sign up Button
                        const SizedBox(height:5),
                        GestureDetector(
                          onTap:signUp,
                          child: Container(
                            height:100,
                            width:400,
                            padding: const EdgeInsets.all(25.0),
                            decoration : BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                            child:const Center(
                                child: Text("Sign Up",style: TextStyle(fontSize: 25,color: Colors.white))
                            ),
                          ),
                        ),


                      ]
                ),
            ])
          )
        );
  }
}
