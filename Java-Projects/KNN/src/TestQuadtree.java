import java.io.*;
import java.util.*;
import java.lang.Double;
import java.lang.String;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import javafx.scene.shape.Rectangle;


public class TestQuadtree {
    public static void main(String[] args) throws Exception{
        int precision=50;//查找精度
        final double virtualy=0.000000000000001,virtualx=0.00000000000001;
        double longitude,latitude;//查找坐标的经度和纬度
        Rectangle orirectangle=new Rectangle(0,0,4,3);//对数据进行分析，设定最初的矩阵，也为根节点
        Scanner input =new Scanner(System.in);
        System.out.print("请输入经度：");
        longitude=input.nextDouble();
        System.out.print("请输入纬度：");
        latitude=input.nextDouble();
        Rectangle testrectangle=new Rectangle((longitude*(-1)-116),(latitude-32),virtualx*2,virtualy*2);//设定查找坐标的矩阵
        Quadtree tree=new Quadtree(precision,orirectangle);//创建根节点
        for(int i=1;i<=precision;i++)
        {
            tree.creatChild();
            int flag=tree.getindex(testrectangle);
            if(flag!=-1)
            {
                tree=tree.nodes[flag];//下次查找从相应的子节点开始
            }
        }

        //读取文件
        String path = "C:\\Users\\Administrator\\Desktop\\KNN\\src\\la_points.txt";
        File file = new File(path);
        BufferedReader br = new BufferedReader(new FileReader(file));//构造一个BufferedReader类来读取文件
        String s = null;
        while((s = br.readLine())!=null){//使用readLine方法，一次读一行
            double y=0,x=0;  //用于存储读取出的坐标
            Pattern p1 = Pattern.compile("(\\d*[.])+(\\d)*");
            Matcher m1 = p1.matcher(s);
            if(m1.find()){
                y=new Double(m1.group());
                y=y-32;
            }
            String s2=s.replaceAll(m1.group()+",", "");
            Matcher m2 = p1.matcher(s2);
            if(m2.find()){
                x=new Double(m2.group());
                x=x-116;
            }
            if(x>tree.bounds.getX()&&x<(tree.bounds.getX()+tree.bounds.getWidth())){
                if(y>tree.bounds.getY()&&y<(tree.bounds.getY()+tree.bounds.getHeight())){
                    System.out.println("相邻近的位置如下：");
                    System.out.println("西经 "+(x+116)+" 北纬 "+(y+32));
                }
            }
        }
        br.close();
    }
}
