<?php     
//include connect.php page for database connection
Include('connect.php');
//if submit is not blanked i.e. it is clicked.
If(isset($_REQUEST['submit'])!='')
{
If($_REQUEST['fname']=='' || $_REQUEST['lname']=='' || $_REQUEST['street']=='' || $_REQUEST['zip']=='' 
	|| $_REQUEST['city']=='' || $_REQUEST['country']=='' || $_REQUEST['tel']=='' || $_REQUEST['email']=='')


	// || $_REQUEST['password']==''|| $_REQUEST['repassword']=='')
{
Echo "please fill the empty field.";
}
Else
{
$sql="insert into hotel into guest (Name,Surename,Adress,Country,Zip,City,Mobile,Email)
    values('".$_REQUEST['fname']."', '".$_REQUEST['lname']."', '".$_REQUEST['street']."', '".$_REQUEST['zip']."', 
    	'".$_REQUEST['city']."', '".$_REQUEST['country']."', '".$_REQUEST['tel']."', '".$_REQUEST['email']."')"; 
	
	// '".$_REQUEST['password']."', '".$_REQUEST['repassword']."')"; 
$res=mysql_query($sql);
If($res)
{
Echo "Record successfully inserted";
}
Else
{
Echo "There is some problem in inserting record";
}


}
}

?>
