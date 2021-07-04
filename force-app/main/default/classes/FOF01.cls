public class FOF01 {

    public Integer count {
        
        get { 
            
            if (count == null) {                
                System.debug('set count');
                count = 10;                
            } else {                
                System.debug('increment count');
                count++;
            }
            
            return count; 
        }
        
    	private set; 
    }
    
    public FOF01() {
    	
        System.debug('constructor begins');
        if (count == null) {
            count = 20;
        }
        System.debug('constructor ends');
    }
    
    public void logCount() {        
        System.debug('The value of count is ' + count);
    }
}