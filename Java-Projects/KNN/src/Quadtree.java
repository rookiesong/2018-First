import javafx.scene.shape.Rectangle;
import java.util.*;

public class Quadtree {
    int depth;        //数的深度
    Rectangle bounds;    //矩形区域
    Quadtree[] nodes; //四个节点

    public Quadtree(int newdepth,Rectangle newbounds){
        depth=newdepth;
        bounds=newbounds;
        nodes=new Quadtree[4];
    }

    /*矩阵结构
     __________________
    |         |        |
    |    1    |    0   |
    |------------------|
    |    2    |    3   |
    |_________|________|

    */

    //创建子节点
    public void creatChild(){
        double subWidth = bounds.getWidth() / 2.0;
        double subHeight = bounds.getHeight() / 2.0;
        double x = bounds.getX();
        double y = bounds.getY();
        nodes[0] = new Quadtree(depth+1, new Rectangle(x + subWidth, y, subWidth, subHeight));
        nodes[1] = new Quadtree(depth+1, new Rectangle(x, y, subWidth, subHeight));
        nodes[2] = new Quadtree(depth+1, new Rectangle(x, y + subHeight, subWidth, subHeight));
        nodes[3] = new Quadtree(depth+1, new Rectangle(x + subWidth, y + subHeight, subWidth, subHeight));
    }

    //判断坐标属于哪个子节点
    public int getindex(Rectangle rectangle){
        int flag = -1;//坐标位于中线上
        double vpoint = bounds.getX() + (bounds.getWidth() / 2.0);
        double hpoint = bounds.getY() + (bounds.getHeight() / 2.0);

        // 坐标位于1、2象限
        boolean top = (rectangle.getY() < hpoint && rectangle.getY() + rectangle.getHeight() < hpoint);
        // 坐标位于3、4象限
        boolean bottom = (rectangle.getY() > hpoint);

        // 坐标位于2、3象限
        if (rectangle.getX() < vpoint && rectangle.getX() + rectangle.getWidth() < vpoint) {
            if (top) {
                flag = 1; // 坐标位于第2象限
            }
            else if (bottom) {
                flag = 2; // 坐标位于第3象限
            }
        }
        // 坐标位于1、4象限
        else if (rectangle.getX() > vpoint) {
            if (top) {
                flag = 0; // 坐标位于第1象限
            }
            else if (bottom) {
                flag = 3; // 坐标位于第4象限
            }
        }
        return flag;
    }

    public void insert(Rectangle rectangle) {
        this.creatChild();
        int index = getindex(rectangle);

            if (index != -1 && nodes[index]==null) {
                nodes[index].insert(rectangle);
            }
        }
}
