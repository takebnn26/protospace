#protospace

##Description of DB

1. User model  
	1. Association    
	  has\_many  :projects  
	  has\_many  :comments  
	  has\_many  :prototypes   
	   
	2. Table  
	  Users table  
	   
	3. Columns and types of columns  
		name     :  string  
		group    :  string  
		profile  :  text  
		work     :  string
		
	  
2. Prototype model  
	1. Association  
	  belongs\_to :userser  
	  has\_many   :comemnts  
	  has\_many   :images  
	  has\_many   :prototypes  
	  
	2. Table  
	  Prototypes table
	  
	3. Columns and types of columns  
	  title        :  string  
  	  catch\_copy  :  string  
  	  concept      :  text  
  	  user\_id     :  integer
	  
3. Comment model
	1. Association  
	  belongs\_to :prototype  
	  belongs\_to :user  
	  
	2. Table  
	  Comments table
	  
	3. Columns and types of columns  
	  user\_id     :  integer  
	  prototype\_id  :  integer  
	  text         :  text  
  	  
4. Image model
	1. Association  
	  belongs\_to :prototype.  
	  
	2. Table  
	  Images table
	  
	3. Columns and types of columns  
	  prototype\_id  :  integer
	  content     :  text  
    
5. Like model  
	1. Association  
	  belongs\_to :user  
	  belongs\_to :prototype  
	  
	2. Table  
	  Likes table
	  
	3. Columns and types of columns  
	  user\_id       :  integer  
	  prototype\_id  :  integer
	    
	   