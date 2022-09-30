//VIDEO DE YOUTUBE: https://youtu.be/rHRVuX3f79Y

Paisaje dia, noche;

boolean day, night;

void setup() {
  size(600, 600);
  day=true;
  night=false;

  dia = new Paisaje (0, true, false);
  noche = new Paisaje (1, false, true);
  
  
}


void draw () {
  if (day) {
    dia.dibujar();
  } else if (night) {
    noche.dibujar();
  }
}

void mouseClicked() {
  if (day) {
    day=false;
    night=true;
  } else if (night) {
    day=true;
    night=false;
  }
}
