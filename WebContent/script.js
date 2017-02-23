function AddUser() {
    
	var table = document.getElementById("myTable");
	var row = table.insertRow(table.rows.length);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);

	cell1.innerHTML = "<b>UserName</b>";
	cell2.innerHTML = "<input type='text' id='username'>";
	cell3.innerHTML = "<b>Password<b>";
	cell4.innerHTML = "<input type='password' id='pasword'>";
	cell5.innerHTML = "<button onclick='AddFunction()'><img src='images/add.png'/></button>";
    var stop=document.getElementById("buttonclick");
    stop.disabled=true;

}
function AddFunction()
{


	var username = document.getElementById("username").value;
	var password = document.getElementById("pasword").value;
	console.log(username,password);

	window.location = 'adduser.jsp?username='+username+'&pasword='+password;
}


function update(id,username,pass){

	var table = document.getElementById("myTable");

	var val = document.getElementById(id).rowIndex;
	var row = table.insertRow(table.rows.length);
	console.log(val);
	console.log(id,username,pass);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	cell1.innerHTML = "<input type='hidden' id='id' value='"+id+"'/>";
	cell2.innerHTML = "<input type='text' id='username' value='"+username+"'/>";
	cell3.innerHTML = "<input type='password' id='pasword' value='"+pass+"'/>";
	cell4.innerHTML = "<button onclick='updatefunction()'><img src='images/update.png'/></button>";
}
function updatefunction()
{

	var id = document.getElementById("id").value;
	var username = document.getElementById("username").value;
	var password = document.getElementById("pasword").value;
	console.log(id,username);

	window.location = 'update.jsp?id='+id+'&username='+username+'&pasword='+password;
}

