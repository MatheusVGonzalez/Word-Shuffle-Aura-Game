@isTest
public class Covid19Test {
    @isTest
    public static void treatPatientTest(){
        //Instance of the class same thing in the anonymous
        Covid19 sjc = new Covid19(10);
        //Check if its really 10 or not - use the assert to see
        Integer treated = sjc.getTreated();
        System.assertEquals(10, treated, 'Treated count doesnt match');
        
         Covid19 sp = new Covid19(112);
        //Check if its really 112 or not - use the assert to see
        treated = sp.getTreated();
        System.assertEquals(112, treated, 'Treated count doesnt match');
        
        //Check the count of recoveredInCountry, needs to be 1010
		System.assertEquals(122, Covid19.recoveredInCountry, 'Treated count doesnt match');
        
        sjc.treatPatient();
        treated = sjc.getTreated();
        System.assert(treated == 11, 'Treated count does not match 2');
		System.assert(Covid19.recoveredInCountry == 123, 'Treated count does not match 2');
        
    }
    
        @isTest
    public static void treatPatientTestNegative(){
        //Instance of the class same thing in the anonymous
        Covid19 sjc = new Covid19(-10);
        //Check if its really 0 or not - use the assert to see
        Integer treated = sjc.getTreated();
        System.assertEquals(0, treated, 'Treated count doesnt match');
    }
    

}