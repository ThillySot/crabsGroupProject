# crabs
drawCapt: number number number number boolean -> image
purpose: xCapt and yCapt represent the x and y position that the captain will be drawn at.
         thetaCapt represents the heading of the captain
         sizeCapt represents the size the captain will be drawn at.
         

getCapt: number boolean -> matrix <br>
purpose: captSize represents the base distance used to calculate the position of each point in correlation to one another.
         moveArm is either true or false and determines whether the captain's spear will be extended or retracted. 
         getCapt uses these numbers to create a 3x18 matrix representing x,y,z points that make up the shape of the "Captain" <br>
Dependencies: none <br>
Call: capt = getCapt(captSize, moveArm) <br>
Side Effects: None <br><br>

getTranslation: number number -> matrix <br>
purpose: Number1 represents the amount to shift in the x direction and Number2 the amount to shift in the y direction. 
         getTranslation uses these numbers to create a 3x3 matrix that will translate an object stored as a 3xN matrix when it 
         multiplies the object matrix <br>
Dependencies: None <br>
Call: T = getTranslation(dx,dy) <br>
Side Effects: None <br>

