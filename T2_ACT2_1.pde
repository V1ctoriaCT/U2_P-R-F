Pentagon ps;

float intensidad = 50;
boolean aumentar = true;


void setup() {
  size(840, 660);
 
  ps = new Pentagon();
  ps.simulate(4);
}

void draw() {
  background(255);
  ps.render();
  
  strokeWeight(3);
  stroke(intensidad, 50,50);
         
      if (intensidad == 255){
           aumentar = false;
       }else if (intensidad == 50 ){
         aumentar = true;
       }
  
       if (aumentar ){
            intensidad += 1;
        }else {
            intensidad -= 1;
        }

}
