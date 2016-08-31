#protospace

##Description of DB
  
  1. Association with models  
  		prototype has 4 models which are  
  
  		1. User model  
  		2. Project model  
  		3. Comment model  
  		4. Image model
  
   The association between these models is that  
  
  		1. User has many Projects and Comments.  
  		2. Project belongs to User and has many Comemnts and Images.  
  		3. Comment belongs to Project and User.  
  		4. Image belongs to Project.
  
  2. Table  
 		Each model has each table, so have to create 4 tables.  
 	
 		1. Users    table  
 		2. Projects table  
 		3. Comments table  
 		4. image    table
  
  
  3. Columns in Tables and what types of culumns  
  
  		1. In Users table(using gem "devise" and gem "paperclip"),  
  			name     :  string 
  			group    :  string  
  			profile  :  text
  
  		   In addtion to, the columns are related to gem "paperclip"  
  
  		2. In Projects table,  
  			title       :  string
  			catch_copy  :  string  
  			concept     :  text  
  			user_id     :  integer  
  
  		3. In Comments table,  
  			user_id     :  integer  
  			project_id  :  integer
  			text        :  text  
  
  		4. In Image table,  
  			project_id  :  integer  
  			image       :  text  
  
  
