/*
  Copyright Earth People Technology Inc. 2013
  
  Data Collector Random Seed
  
  Platform: EPT-570-AP-M4
    
*/

  int startStopBit = 0;
  int count = 0;
  int ledPin = 13;     //Output
  int LEDExt = 15;     //Output
  int inPin8 = 11;     //Input
  int C_Enable = 17;   //Output
  
  int new_value = 0x00000000;
  int data_top_2bits = 0;
  int data_bottom_6bits = 0;
  int data_to_DPL = 0;

void setup()
{
  
   int k ; 
   
   //Set pins D33-D41 as outputs
     for( k = 33 ; k <= 41 ; k++ )
      pinMode( k, OUTPUT ) ; // Sets Port C2-C9 to output pins
  
    // Set the output pins in the Output Write Enable Register
    REG_PIOC_OWER =  0x0000037E ; 
  
    // Disable writing to all other pins on the same port
    REG_PIOC_OWDR = 0xFFFFFC81 ;  
    
    
  pinMode(C_Enable, OUTPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(LEDExt, OUTPUT);
  pinMode(inPin8, INPUT);
  
  randomSeed(analogRead(1));

}

void loop ()
{
  
   int i ;
   
   
   //Sample the Start/Stop switch
   //from the EPT-4CE6-AF   
   startStopBit = digitalRead(inPin8);
   
  delay(500); //Delay 500 ms

   if(startStopBit) 
   {
     // Write a random number from 0 to 299
     //to the input of the EPT-4CE6-AF
      new_value = random(255);
      
      //Map the the transfer byte to pins available on
      //the DueProLogic
      data_top_2bits = (new_value & 0x000000c0)<<2;
      data_bottom_6bits = (new_value & 0x0000003F)<<1;
      
      //Or the re-mapped bits together and use the 
      //the ODSR register to transmit the bits
      data_to_DPL = data_top_2bits | data_bottom_6bits;
      REG_PIOC_ODSR = data_to_DPL;
         
      
      //Set the Write Enable Pin High
       digitalWrite(C_Enable, HIGH);
 
      //Set the LED Pin High
      digitalWrite(ledPin, HIGH);
      digitalWrite(LEDExt, HIGH);
      
      delay(500); //Delay 500 ms

      //Set the LED Pin Low
      digitalWrite(ledPin, LOW);
      digitalWrite(LEDExt, LOW);
      
      //Set the Write Enable Pin Low
      digitalWrite(C_Enable, LOW);
      
   }
  
}
