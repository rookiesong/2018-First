class Stack{
    private int[]elements;
    private int size;
    public static final int porsize= 20;
    Stack(){
        elements=new int[porsize];
    }
    Stack(int newsize){
        elements=new int [newsize];
    }

    public void push(int value){
        if(size>=elements.length){
            int [] temp=new int[porsize+1];
            System.arraycopy(elements,0,temp,0,porsize);
            elements=temp;
        }
        elements[size++]=value;
    }
    public int pop(){
        return elements[size--];
    }
    public int peek(){
        return elements[size-1];
    }
    public boolean empty(){
        return size==0;
    }
    public int getSize(){
        return size;
    }
}
