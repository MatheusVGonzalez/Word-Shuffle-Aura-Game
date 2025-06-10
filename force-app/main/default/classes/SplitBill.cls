/*Pizza Rates:
	1 slice - $8/slice
	2-3 slice - $7/slice 
	>3 slice - $6/slice 

	Ross order - 3 slices
	Chandler order - 1 slice
	Joey order - 4 slices
*/
public class SplitBill {
	final Integer ONE_SLICE = 8;
    final Integer UPTO_THREE_SLICES = 7;
    final Integer MORE_THAN = 6;
   	
    public Integer Bill(Integer numberOfSlices){
        Integer billToPay = numberOfSlices == 1 ? ONE_SLICE * numberOfSlices :
        					(numberOfSlices <= 3? UPTO_THREE_SLICES * numberOfSlices :
                             	MORE_THAN * numberOfSlices);

		return billToPay;


    }
}