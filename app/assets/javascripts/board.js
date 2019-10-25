function createBoard() {
	var board = document.querySelector('.board');

	for (var i = 0; i < 8; i++) {
		var myRow = document.createElement('div');
		myRow.className = 'row';

		for (var j = 0; j < 8; j++) { 
			var isAlt = true;
			if (j % 2 == 0) {
				isAlt = true;
			}
			else {
				isAlt = false;
			}

			if (i % 2 == 0) {
				isAlt = !isAlt;
			}

			var cell = createCell(isAlt);
			myRow.appendChild(cell);
		}
		board.appendChild(myRow);
	}
}

function createCell(isAlt) {
	var cell = document.createElement('div');
	cell.className = isAlt ? 'cell-alt' : 'cell';
	return cell;
}

createBoard();


	