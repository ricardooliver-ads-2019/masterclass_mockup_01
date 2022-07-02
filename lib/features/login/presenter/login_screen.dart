import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
      final getColor = (Set<MaterialState> states){
        if (states.contains(MaterialState.pressed)){
          return colorPressed;
        }else{
          return color;
        }
      };
      return MaterialStateProperty.resolveWith(getColor);
    }
  Widget build(BuildContext context) {
     final heigth = MediaQuery.of(context).size.height;
     final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 110,
                height: 110,
                constraints: BoxConstraints(maxHeight: 250, maxWidth: 250, minHeight: 100, minWidth: 100),
                child: Image.asset('assets/images/logo.png')
              ),
            ),
        
            SizedBox(height: 30),
        
            Text('Get your Money\n Under Control', 
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.8),
              ),            
            ),
        
            const SizedBox(height: 20),
        
            Text('Manage your expenses.\n Seamlessy.',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.5),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 70),
        
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 85, 26, 221),
                onPrimary: Colors.white,
                maximumSize: const Size(500, 50.0),
                minimumSize: Size(width *0.90, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              
              onPressed: () {},
              child: Text('Sign Up with Email ID',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
        
            SizedBox(height: 15),
        
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: const Color.fromARGB(255, 133, 130, 130),
                maximumSize: const Size(500, 50.0),
                minimumSize: Size(width *0.90, 50), 
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
                
              ),
              
              onPressed: (){},
              child: Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google.png'),
                    const SizedBox(width: 10,),
                    Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 20),
        
            OutlinedButton(
              
              onPressed: () {},
              child: Text.rich(
                TextSpan( text:'Already have an account? ',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white.withOpacity(.7),
                        decorationThickness: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    
  }
}