import processing.net.*;

Server myServer;

String data = "{  \"speed\": [{ \"id\": 1, \"max\": \"25.1\" }, { \"id\": 2, \"real\": \"23.1\"  }], \"battery\": { \"level\": \"55.5\" }}";

/*{
  "speed": [{
    "id": 1,
    "max": "25.1"
  }, {
    "id": 2,
    "real": "23.1"
  }],
  "battery": {
    "level": "55.5"
  }
} */

void setup() {
  size(100, 100);
  // Starts a myServer on port 555
  myServer = new Server(this, 555); 

}

void draw() {
  myServer.write(data);
  myServer.write("\n");
  delay(5000);
}
