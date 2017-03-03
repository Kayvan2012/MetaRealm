/*
argument0=x 
argument1=y 
argument2=radius 
argument3=step 
argument4=alpha1 
argument5=alpha2

This code draws a circle by using a primitive of the type "pr_trianglefan"
First the center vertex of the circle is drawn, then, by using the "repeat" statement,
all the other vertexes.
The color is black(0) because only the alpha is needed for the lighting.
*/
draw_primitive_begin(pr_trianglefan);
draw_vertex_color(argument0,argument1,0,argument4);
var nn;
nn = 0;
repeat(argument3+1)
{
draw_vertex_color(argument0+lengthdir_x(argument2,nn),
                  argument1+lengthdir_y(argument2,nn),
                  0,
                  argument5);
nn += 360 / argument3;
}
draw_primitive_end();
