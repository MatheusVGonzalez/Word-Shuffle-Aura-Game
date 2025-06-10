public class Fitness {
	final Decimal underWeight = 18.5;
    final Decimal normalWeight = 24.9;
    final Decimal overWeight = 29.9;
    final Decimal obesity = 30;
    public Decimal resultbmi = 0; 
    public Decimal weight = 0; 
    public Decimal height = 0; 
    
    public Decimal hour = 0; 
    public Decimal resultPace = 0;
    
	public Decimal distance = 0;
	public Decimal minute = 0;
    
    public Fitness(){
    }
    public Decimal calculateBMI(Decimal weight, Decimal height){
        if(weight <= 0 || height <= 0){
			throw new IllegalArgumentException('Weight and Decimal greather then 0');
        }
		this.resultbmi = weight / (height * height);
        if(resultbmi <= underWeight){
            System.debug('You are underweight');
        }if(resultbmi <= normalWeight){
            System.debug('You are Normal weight');
        }if(resultbmi <= overWeight){
            System.debug('You are Overweight');
        }if(resultbmi >= obesity){
            System.debug('You are Obesity');
        }
        return resultbmi;
        

    }
    

    public Decimal calculatePace(Decimal distance, Decimal minute){
        if(minute <= 0 || distance <= 0){
			Assert.fail('Erro');
        }
		this.hour = minute / 60; 
        this.resultPace = distance / hour;
        
        System.debug(resultPace +'km/h');
        return resultPace;
        
    }
    
    public Decimal getBmi() {
        return resultbmi;
    }
    
    public Decimal getPace() {
        return resultPace;
    }
}