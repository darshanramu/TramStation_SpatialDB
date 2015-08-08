import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

	public class hw2 {

	    public static void main(String args[]) throws SQLException {
	    	try
	    	{
	        String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
            Properties props = new Properties();
	        props.setProperty("user", "system");
	        props.setProperty("password", "Darzy1987");
	   
	        int count=args.length, i;
	        if(count<2)
        	{
        		 System.out.println("Invalid number of arguments given");
        		 return;
        	}
	        //for(i=0;i<count;i++)
	        {
	        	//System.out.println("The arguments are:" + args[i]);
	        }
	        
	        //All Declarations related to query building goes below
	        String query = new String();
	        String table_name = new String();
	        String column_name = new String();
	        String shape = new String();
	        int num_res=0;
	        
	        
	        if("window".equals(args[0]))
	        {
	        	if(count<6)
	        	{
	        		 System.out.println("Invalid number of arguments given");
	        		 return;
	        	}
	        		
	        	switch(args[1])
	        	{
	        	case "student": 
	        					table_name = "students s";
	        					column_name = "s.student_id";
	        					shape = "s.shape";
	        					break;
	        	case "building":
	        					table_name = "buildings b";
	        					column_name = "b.building_id";
	        					shape = "b.shape";
	        					break;
	        	case "tramstops":
	        					table_name = "tramstops t";
	        					column_name = "t.tram_station_id";
	        					shape = "t.point";
	        					break;
	        	}
	        	//System.out.println(table_name + column_name);
	        	query = "select " + column_name + " from " + table_name + " where sdo_inside("+ shape + ",sdo_geometry(2003,NULL,NULL,sdo_elem_info_array(1,1003,3),sdo_ordinate_array(" + args[2] + "," + args[3] + "," + args[4] + "," + args[5] + ")))='TRUE'";
	        	//System.out.println(table_name +" " +column_name + " " + query );
	        }
	        else if("within".equals(args[0]))
	        {
	        	if(count<3)
	        	{
	        		 System.out.println("Invalid number of arguments given");
	        		 return;
	        	}
	        	query = "select b.building_id " +
	        			" from buildings b,students s " +
	        			"where s.student_id='"+ args[1] +"' and sdo_within_distance(b.shape,s.shape,'distance="+ args[2]+"')='TRUE'" +
	        			" union select t.tram_station_id " +
	        			" from tramstops t,students s " +
	        			"where s.student_id='"+ args[1] +"' and sdo_within_distance(t.point,s.shape,'distance="+ args[2]+"')='TRUE'";
	        	//System.out.println(query );
	        }
	        else if("nearest-neighbor".equals(args[0]))
	        {
	        	if(count<4)
	        	{
	        		 System.out.println("Invalid number of arguments given");
	        		 return;
	        	}
	        	switch(args[1])
	        	{
	        	case "student": 
	        					table_name = "students s";
	        					column_name = "s.student_id";
	        					shape = "s.shape";
	        					num_res=Integer.parseInt(args[3]);
	        					break;
	        	case "building":
	        					table_name = "buildings b";
	        					column_name = "b.building_id";
	        					shape = "b.shape";
	        					num_res=Integer.parseInt(args[3])+1;
	        					break;
	        	case "tramstops":
	        					table_name = "tramstops t";
	        					column_name = "t.tram_station_id";
	        					shape = "t.point";
	        					num_res=Integer.parseInt(args[3]);
	        					break;
	        	}

	        	query = "select " + column_name +
	        			" from " + table_name +
	        			" where sdo_nn(" + shape + ",(select b2.shape from buildings b2 where b2.building_id='"+args[2]+"'),'sdo_num_res="+num_res+"')='TRUE' and "+column_name+"!='"+args[2]+"'";
	        	//System.out.println(query );
	        }
	        else if("fixed".equals(args[0]))
	        {
	        	if(count<2)
	        	{
	        		 System.out.println("Invalid number of arguments given");
	        		 return;
	        	}
	        	switch(args[1])
	        	{
	        	case "1":   query = " select s.student_id " +
	        						" from students s, tramstops t " +
	        						" where (t.tram_station_id='t2ohe' and t.tram_station_id='t6ssl') " +
	        						" and sdo_relate(s.shape,t.shape,'mask=inside+coveredby')='TRUE' " +
	        						" UNION " +
	        						" ( " +
	        						" select b.building_id " +
	        						" from buildings b, tramstops t " +
	        						" where (t.tram_station_id='t2ohe' and t.tram_station_id='t6ssl') " +
	        						" and sdo_relate(b.shape,t.shape,'mask=inside+coveredby')='TRUE') ";

	        		        break;
	        	case "01":  query = " select s.student_id " +
							" from students s, tramstops t " +
							" where (t.tram_station_id='t2ohe' or t.tram_station_id='t6ssl') " +
							" and sdo_relate(s.shape,t.shape,'mask=inside+coveredby')='TRUE' " +
							" UNION " +
							" ( " +
							" select b.building_id " +
							" from buildings b, tramstops t " +
							" where (t.tram_station_id='t2ohe' or t.tram_station_id='t6ssl') " +
							" and sdo_relate(b.shape,t.shape,'mask=inside+coveredby')='TRUE') ";
	                     	break;

	        	case "2":   query = "select s.student_id,t.tram_station_id " +
	        				"from tramstops t, students s " +
	        				"where sdo_nn(t.point,s.shape,'sdo_num_res=2')='TRUE'" +
	        				"order by lpad(s.student_id,1)";
	        				break;
	        	case "3":	query = "select tram_id" +
	        				" from( " +
	        					" select t.tram_station_id as tram_id, count(b.building_id) as bid" +
	        					" from tramstops t, buildings b " +
	        					" where sdo_within_distance(b.shape,t.point,'distance=250')='TRUE'" +
	        					" group by t.tram_station_id " +
	        					" order by count(b.building_id) desc)" +
	        					" where rownum<=1";
	        	//System.out.println(query);
	        				break;
	        	case "4":	query = "select * " +
	        						" from( " +
	        						"select sid, count(bid) as R_Count" +
	        						" from( " +
	        						"	select b.building_id as bid,s.student_id as sid " +
	        						"	from buildings b, students s " +
	        						"	where sdo_nn(s.shape,b.shape,'sdo_num_res=1')='TRUE')" +
	        						"	group by sid" +
	        						"	order by R_Count desc)" +
	        						"	where rownum<=5";
	        	//System.out.println(query);
	        				break;
	        	case "5":   query = "select '('||SDO_GEOM.SDO_MIN_MBR_ORDINATE(geom, 1)||','||SDO_GEOM.SDO_MIN_MBR_ORDINATE(geom, 2)||')' as Lower_left,'('||SDO_GEOM.SDO_MAX_MBR_ORDINATE(geom, 1)||','||SDO_GEOM.SDO_MAX_MBR_ORDINATE(geom, 2)||')' as Upper_Right" +
	        						" from( " +
	        						"	select SDO_AGGR_MBR(shape) as geom" + 
	        						"	from buildings" +
	        						"	where building_name like 'SS%')";	
	        						
	        				break;
	        	}
	        }
	        Connection conn = DriverManager.getConnection(url,props);
	        PreparedStatement preStatement = conn.prepareStatement(query);
	       	    
	        ResultSet result = preStatement.executeQuery();
	        int rows=0;
	        System.out.println("------------\nQuery Result:\n------------");
	        while(result.next()){
	            //System.out.println(result.getString("tram_station_id"));
	        	//System.out.println(result.getString(1));
	        	try
	        	{
	        		if(result.getString(2)!= null)
	        		{
	        			System.out.print(result.getString(1) + " ");
	        			System.out.println(" " + result.getString(2));
	        		}
	        	}
	        	catch(Exception e)
	        	{
	        		System.out.println(result.getString(1));
	        	}
	        	rows++;
	        }
	        System.out.println("\n------------\n"+rows+" rows selected");
	        conn.close();
	    	}
	    	catch(Exception e)
	    	{
	    		System.out.println("Please pass the arguments in correct order and as per requirements");
	    	}
	    	}
	}



