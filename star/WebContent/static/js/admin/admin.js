/*게시글 목록*/
showList();

function showList() {
	console.log(users);
	users = JSON.parse(users);
	//files = JSON.parse(files);
	const $tr = $(".content tr");
	let text = "";

	users.forEach(users => {
		text += `
		<td><input type="checkbox" name="delete-report" class="term"/>
		<tr>
					<td><input type="checkbox" name="delete-report" class="term"/></td>
					<td><c:out value = "${user.userNumber}"/></td>
					<td><c:out value = "${user.userName}"/></td>
					<td><c:out value = "${user.userId}"/></td>
					<td><c:out value = "${user.userAddress1}"/></td>
					<td><c:out value = "${user.userAge}"/></td>
					<td><c:out value = "${user.userGender}"/></td>
					<td><c:out value =  "${user.userPhonenumber}"/></td>
					<td><c:out value = "${user.userEmail}"/></td>
				</tr>
		
		`
	});


	$tr.append(text);
}
















