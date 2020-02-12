
import processing.net.*;

String[] data;

void setup() {
  size(200, 200);
  background(50);
  data = loadStrings("http://my-json-server.typicode.com/sinbrive/jsonserver/speed");
  for(int i=0; i<data.length; i++) {
    println(data[i]);
  }
  
  data = loadStrings("http://my-json-server.typicode.com/sinbrive/jsonserver/battery");
  for(int i=0; i<data.length; i++) {
    println(data[i]);
  }
}

void draw() {
 
}
