public class FizzBuzz {
    public FizzBuzz() {
        Integer numero = 0;
        do{
            if(Math.mod(numero, 3) == 0 && (Math.mod(numero, 5) == 0)){
               System.debug(numero + 'FizzBuzz');
            }
            else if(Math.mod(numero, 3) == 0){
                System.debug(numero + 'Fizz');
            }
            else if(Math.mod(numero, 5) == 0){
               System.debug(numero + 'Buzz');
            }

            else{
                System.debug(numero);
            }
            numero++;
        }while(numero <= 100);
    }
}