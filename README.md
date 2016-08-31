#protospace

##Description of DB

1. User model  
	1. Association  
	  User has many Projects and Comments.  
	
	2. Table  
	  Users table  
	
	3. Columns and types of columns  
		name     :  string  
		group    :  string  
		profile  :  text  
		work     :  string  
	
2. Prototype model  
	1. Association  
	  Prototype belongs to User and has many Comemnts and Images.  
	
	2. Table  
	  Prototypes table
	
	3. Columns and types of columns  
	  title        :  string  
  	  catch\_copy  :  string  
  	  concept      :  text  
  	  user\_id     :  integer  
	
3. Comment model  
	1. Association  
	  Comment belongs to Prototype and User.  
	
	2. Table  
	  Comments table
	
	3. Columns and types of columns  
	  user\_id     :  integer  
	  prototype\_id  :  integer  
	  text         :  text  
  
4. Image model
	1. Association  
	  Image belongs to Prototype.  
	
	2. Table  
	  Images table
	
	3. Columns and types of columns  
	  prototype\_id  :  integer
	  content     :  text  

	

