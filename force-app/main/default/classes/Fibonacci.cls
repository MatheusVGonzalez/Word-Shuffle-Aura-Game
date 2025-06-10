public class Fibonacci {
    public Fibonacci(){
		Integer cont = 0;
        Integer fibo = 0;
        Integer before_previous = 0;
        Integer previous = 1;
        Integer current = 0;
        system.debug(before_previous);
        system.debug(previous);
        
        while(cont <18){
            current = before_previous + previous;
            //0 + 1 = 1
            system.debug(current);
            
            before_previous = previous;
            
            previous = current;
            
            cont++;
            

        }
    }
}