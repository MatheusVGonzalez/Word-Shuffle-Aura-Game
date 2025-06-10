public class LeapYear {
    public LeapYear() {
        Integer year = 2900;	
        
        do{
            System.debug('Do-While - Year: ' + year);
                
                if (Math.mod(year, 4) == 0) {
                    if (Math.mod(year, 100) == 0) {
                        if (Math.mod(year, 400) == 0) {
                            System.debug(year + ' is a leap year');
                        } else {
                            System.debug(year + ' is NOT a leap year');
                        }
                    } else {
                        System.debug(year + ' is a leap year');
                    }
                } else {
                    System.debug(year + ' is NOT a leap year');
                }
                
                year++;
        }while(year<= 3000);
        
        	while (year <= 3000) {
                System.debug('While - Year: ' + year);
                
                if (Math.mod(year, 4) == 0) {
                    if (Math.mod(year, 100) == 0) {
                        if (Math.mod(year, 400) == 0) {
                            System.debug(year + ' is a leap year');
                        } else {
                            System.debug(year + ' is NOT a leap year');
                        }
                    } else {
                        System.debug(year + ' is a leap year');
                    }
                } else {
                    System.debug(year + ' is NOT a leap year');
                }
                
                year++;
            }
        for(year = 2900; year <= 3000; year++){
            System.debug('Year: ' + year);
                
                if (Math.mod(year, 4) == 0) {
                    if (Math.mod(year, 100) == 0) {
                        if (Math.mod(year, 400) == 0) {
                            System.debug(year + ' is a leap year');
                        } else {
                            System.debug(year + ' is NOT a leap year');
                        }
                    } else {
                        System.debug(year + ' is a leap year');
                    }
                } else {
                    System.debug(year + ' is NOT a leap year');
                }
                
        }

    }
}