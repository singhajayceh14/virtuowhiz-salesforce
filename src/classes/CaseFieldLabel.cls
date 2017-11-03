public class CaseFieldLabel {
    public static void getCaseFieldLabel()
    {
        String type= 'Case'; 
        Map<String,Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String,String> resultMap=new Map<String,String>();
        Schema.SObjectType caseSchema = schemaMap.get(type);
        Map<String, Schema.SObjectField> fieldMap = caseSchema.getDescribe().fields.getMap();
        for (String fieldName: fieldMap.keySet()) {  
            String mylabel;
            //It provides to get the object fields label.
            mylabel = fieldMap.get(fieldName).getDescribe().getLabel();
            //System.debug(fieldName + ' : '+mylabel);
            resultMap.put(fieldName, mylabel);            
        }
        for(String m:resultMap.keySet()){
            System.debug(m + ' -> '+resultMap.get(m));
        }
    }
    
}