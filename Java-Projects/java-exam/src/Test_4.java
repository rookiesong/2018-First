import java.lang.*;
class Circle{
    private double radius;
    public Circle(double newradius){
        radius=newradius;
    }
    public double getArea(){
        return radius*radius*Math.PI;
    }
}

class ComparableCircle extends Circle implements Comparable<Circle>{
    ComparableCircle(double r){
        super(r);
    }
    public int compareTo(Circle c){
        if(this.getArea()>c.getArea())
            return 1;
        else if(this.getArea()==c.getArea())
            return 0;
        else
            return -1;
    }
}
