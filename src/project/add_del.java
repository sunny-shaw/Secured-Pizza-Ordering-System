package project;
import java.sql.*;
import java.util.Random;
public class add_del {
	private static final String List="12345678910";
	private static final int List_len=8;
	Connection conn;
	 String fid[]= new String[100];
	 String nm[]= new String[100];
	 String size[]= new String[100];
	 String qty[]= new String[100];
	 String pr[]= new String[100];
	 int i=0;
	public void connect() throws Exception {
	   	   Class c= Class.forName("oracle.jdbc.driver.OracleDriver") ;
	   	   conn  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","903880");
	   	  // System.out.println("connected..");
	     }
        public boolean delete(String StoreId)throws Exception {
    	 Statement stmt = conn.createStatement();
    	 int r= stmt.executeUpdate("delete  from STORE1 where StoreId="+ StoreId);
    	 return true;
         }
        public void insert( String StoreId,String Name,String Street,String State,int Pincode ,String MobileNo)throws Exception {
            Statement stmnt= conn.createStatement();
             int r=stmnt.executeUpdate(" insert into STORE1 values('"+StoreId+"','"+Name+"','"+Street+"','"+State+"','"+Pincode+"','"+MobileNo+"')") ;
             }
        public void update( String Sid,String Name,String Street,String State,int Pincode ,String MobileNo)throws Exception {
        	Statement stmnt= conn.createStatement();
            int r=stmnt.executeUpdate(" update STORE1 set Name='"+Name+"', Street='"+Street+"', State='"+State+"', Pincode='"+Pincode+"', MobileNo='"+MobileNo+"' where StoreId="+Sid); 
            }
        	
         public String generateRandomString() {
        	 StringBuffer randstr= new StringBuffer();
        	 Random rnd = new Random();
        	 for(int i=0;i<List_len;i++) {
        		  int n= rnd.nextInt(10);
        		  char ch= List.charAt(n);
        		  randstr.append(ch);
        	 }
        	    return randstr.toString();
         }
          public boolean Chngeloginst_0()throws Exception {
        	  Statement stmt = conn.createStatement();
        	  int r= stmt.executeUpdate("update Credentials set Loginstatus='0' ");
        	  if(r!=0)
        		  return true;
        	  else 
        		  return false;
        	  
          }
          public boolean Chngeloginst_1()throws Exception {
        	  Statement stmt = conn.createStatement();
        	  int r= stmt.executeUpdate("update Credentials set Loginstatus='1' ");
        	  if(r!=0)
        		  return true;
        	  else 
        		  return false;
        	  
          }
          public void display(String f_id)throws Exception {
       	   i=0;
       	   PreparedStatement ob= conn.prepareStatement("select  * from STORE1");
            ResultSet res= ob.executeQuery();
            while(res.next())
            {  
                 
                 qty[i]= res.getString("qty");
                 size[i]= res.getString("sz");
                 pr[i]= res.getString("pr");
                 nm[i]= res.getString("nm");
                 
                 i++;
       	}
}
}
