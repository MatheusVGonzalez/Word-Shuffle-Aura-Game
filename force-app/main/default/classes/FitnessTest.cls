@isTest
public class FitnessTest {
	@isTest
    public static void calculateBMI() {
        Fitness fit = new Fitness();
        fit.calculateBMI(100, 2);
        Decimal returnfit = fit.getBmi();
        System.AssertEquals(25, returnfit, 'Value is different + '+returnfit);
        
    }
   	@isTest
    public static void calculatePace() {
        Fitness pace = new Fitness();
        pace.calculatePace(1, 30);
        Decimal returnpace = pace.getPace();
        System.AssertEquals(2, returnpace, 'Value is different +' +returnpace);
    }
}