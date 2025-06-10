public class Pattern {
    public Pattern(){
        Integer n = 5;
        for(Integer j = 0; j < n; j++){
            String pat = '';
            for(Integer i = 0; i <= j; i++) {
                pat = pat + '  * ';
				
            }
            system.debug(pat);
        }
    }
}