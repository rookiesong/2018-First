interface ComputeWeight{
    public abstract double computeWeight();
}

class Television implements ComputeWeight{
    double weight;
    public Television(int newweight)
    {
        this.weight=newweight;
    }
    public double computeWeight()
    {
        return weight;
    }
}

class Computer implements ComputeWeight{
    double weight;
    public Computer(int newweight)
    {
        this.weight=newweight;
    }
    public double computeWeight()
    {
        return weight;
    }
}

class WashMachine implements ComputeWeight{
    double weight;
    public WashMachine(int newweight)
    {
        this.weight=newweight;
    }
    public double computeWeight()
    {
        return weight;
    }
}

class Car {
    private ComputeWeight [] Goods={new Television(3),new Computer(4),new WashMachine(5)};
    public double sum()
    {
        return Goods[0].computeWeight()+Goods[1].computeWeight()+Goods[2].computeWeight();
    }
}
