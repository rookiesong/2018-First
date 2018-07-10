import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.io.*;

public class Setindex {
    private ArrayList<String> list;
    private Map<String,ArrayList<String>> map1=new HashMap<>(); //构建关键词和文件名的散列表
    private Map<String,Integer> map2=new HashMap<>();//构建关键词和TF的散列表
    public void CreateIndex(String filepath){
        String[] words = null;
        try {
            File file=new File(filepath);
            BufferedReader reader=new BufferedReader(new FileReader(file));
            String testString=null;
            while((testString=reader.readLine())!=null){//获得关键词
                words=testString.split("#");//测试文件中关键词用#分开，利用split()方法读取关键词
            }
            for (String string : words) {
                if (!map1.containsKey(string)) {
                    list=new ArrayList<String>();
                    list.add(filepath);
                    map1.put(string, list);
                    map2.put(string, 1);
                }
                else {
                    list=map1.get(string);
                    //如果没有包含过此文件名，则把文件名放入表中
                    if (!list.contains(filepath)) {
                        list.add(filepath);
                    }
                    //文件中的总TF
                    int count=map2.get(string)+1;
                    map2.put(string, count);
                }
            }
            reader.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        Setindex index = new Setindex();
        for (int i = 1; i <= 5; i++) {
            String path = "D:\\Documents\\GitHub\\First\\Java-Projects\\Inverted-index\\src\\test_" + i + ".txt";
            index.CreateIndex(path);
        }
        for (Map.Entry<String, ArrayList<String>> map : index.map1.entrySet()) {
            System.out.println(map.getKey() + ":" + map.getValue());
        }
        for (Map.Entry<String, Integer> num : index.map2.entrySet()) {
            System.out.println(num.getKey() + ":" + num.getValue());
        }
    }
}

