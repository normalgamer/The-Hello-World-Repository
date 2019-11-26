void setup(){
    pinMode(13, OUTPUT);
    Serial.begin(9600);
}

void loop(){
    digitalPin(13, 1);              // 1 = ON. It is also considered part of the Hello World program in Arduino to turn on the
                                    // built-in LED on the 13th digital pin
    Serial.println("Hello World");  // Alternatively, you can put this in void setup(), so it isn't spammed on the serial monitor
}
