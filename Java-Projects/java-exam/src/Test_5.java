class Node{
    int value;
    Node next;
    Node(int newvalue){
        this.value=newvalue;
        next=null;
    }
}

class MyData{
    static final int N=5;
    int [] data=new int[N];
    Node Head;
    public MyData(){
        for(int i=0;i<N;i++)
            data[i]=i;
    }
    public void Trans(){
        Node temp=null;
        Node tail=Head;
        for(int i=0;i<N;i++)
        {
            temp=new Node(i);
            if(i==0)
            {
                Head=temp;
                tail=temp;
            }
            else
            {
                tail.next=temp;
                tail=tail.next;
            }
        }
        tail.next=Head;
    }
    public void Show(){
        Node temp=Head;
        do{
            System.out.println(temp.value);
            temp=temp.next;
        }
        while(temp!=Head);
    }
}