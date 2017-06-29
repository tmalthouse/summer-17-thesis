//We create a new datatype, and declare it as a compound type
typedef struct {
  //The first element is an unsigned 32-bit integer,
  //which holds a unique ID for the body
  uint32_t id;
  //We then have a 3-dimensional vector to hold the body's position
  vec3 pos;
  //And another to hold its velocity
  vec3 vel;
  //Then, we have its mass, stored as a floating-point number.
  double mass;
//Finally, we give the compound structure the name 'Body'
} Body;
