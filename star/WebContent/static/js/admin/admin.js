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
		<td><input type="checkbox" name="delete-report" class="term"/></td>
					<td>${users.userNumber}</td>
					<td>${users.userName}</td>
					<td>${users.userId}</td>
					<td>${users.userAddress1}</td>
					<td>${users.userAge}</td>
					<td>${users.userGender}</td>
					<td>${users.userPhonenumber}</td>
					<td>${users.userEmail}</td>
		
		`
	});

	if (users.length == 0) {
		text += `
			<li>
		        <div>
					현재 게시글이 없습니다. 게시글 작성을 해보세요!
				</div>
			</li>
		`
	}
	$tr.append(text);
}
















