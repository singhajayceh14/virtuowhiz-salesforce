public class StringArrayTest {
	public static String[] generateStringArray(Integer n)
    {
        String[] testList = new List<String>();
        for(Integer i=0;i<n;i++)
        {
            testList.add('Test '+i);
            System.debug(testList[i]);
        }
        return testList;
    }
}