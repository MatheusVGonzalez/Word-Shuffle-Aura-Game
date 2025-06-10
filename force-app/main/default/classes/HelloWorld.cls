public class HelloWorld {
    public Integer num1 = 1;
    public Integer num2 = 2;
    public Integer som = 0;
    public void soma(Integer somaw){
        System.debug(somaw);
        som = num1 + somaw;
        System.debug(som);
    }
    
    public String getDay(Integer num){
        String getString = '';
        switch on num {
            when 0{
                getString = 'Monday';
            }
            when 1{
                getString = 'Tuesday';
            }
            when 2{
                getString = 'Wendsday';
            }
            when 3{
                getString = 'Thursday';
            }
            when 4{
                getString = 'Friday';
            }
            when 5{
                getString = 'Saturday';
            }
            when 6{
                getString = 'Sunday';
            }
            
        }
    return getString;
    }
    
}