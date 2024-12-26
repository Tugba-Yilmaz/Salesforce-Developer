public class Caloricalculator {

    
    public static Decimal  totalCalorie(Decimal countOfSlices,Decimal  canOfSoftDrink){
        Decimal sumOfCalorie= (countOfSlices*258) + (canOfSoftDrink*150);
        return sumOfCalorie;
    }
}