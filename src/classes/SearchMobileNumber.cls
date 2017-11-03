public class SearchMobileNumber {
    public static List<string> getSearchMobileNumber(String Phone)
    {    
        string nondigits = '[^0-9]';
        string PhoneDigits;
        string mob1,mob2;
        List<string> listMobileNo=new List<string>();
        // remove all non numeric
        PhoneDigits = Phone.replaceAll(nondigits,'');
        
        // 10 digit: ###-####-###
        if (PhoneDigits.length() == 10)
        {
            mob1=PhoneDigits.substring(0,3) + '-' +
                PhoneDigits.substring(3,7) + '-' +
                PhoneDigits.substring(7,10);
            listMobileNo.add(mob1);
            System.debug('Mob1 : '+mob1);
        }
        
        // 10 digit: (###) ####-###
        if (PhoneDigits.length() == 10) {
            mob2=PhoneDigits.substring(0,0) + '(' +
                PhoneDigits.substring(0,3) + ')' +
                PhoneDigits.substring(3,3) + ' ' +
                PhoneDigits.substring(3,7) + '-' +
                PhoneDigits.substring(7,10); 
            System.debug('Mob2 : '+mob2);
            listMobileNo.add(mob2);
        }
        System.debug('List '+listMobileNo);
        return(listMobileNo);
    }
}