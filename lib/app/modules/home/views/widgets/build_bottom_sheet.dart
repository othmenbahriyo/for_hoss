import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildBottomSheet extends StatelessWidget {
  const BuildBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.red,),
        child: Container(
          margin:const EdgeInsets.all(8),
          padding:const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: '🔎 Shift Offerts',
                    hintStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(16),
                    fillColor: const Color(0xff53c5cd),
                  ),
                ),
              ),
              ElevatedButton(

                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(const CircleBorder()),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.all(const Color(0xffefefef)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                  }),
                ),
                child:const Center(child: Icon(Icons.my_library_books_rounded,color: Colors.black,)),
              ),
              ElevatedButton(

                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(const CircleBorder()),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.all(const Color(0xffefefef)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                  }),
                ),
                child:const Center(child: Icon(CupertinoIcons.person,color: Colors.black,)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
