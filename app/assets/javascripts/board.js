var types = ["king", "queen", "bishop", "knight", "rook", "pawn"];
​
​
class Board {
    constructor() {
        this.cells = [];
    }
}
​
​
class Cell {
    constructor(position, piece) {
        this.position = position;
        this.piece = piece;
    }
}
​
class Piece {
    constructor(type, color, position) {
        this.type = type;
        this.color = color;
        this.position = position;
    }
}
​
var myboard = new Board();
​
​
function createBoard() {
    document.addEventListener("DOMContentLoaded", function(event) {
        var theBoard = document.querySelector('.chess-board');
​
        for (var i = 0; i < 8; i++) {
            var myRow = document.createElement('div');
            myRow.className = 'row';
​
            for (var j = 0; j < 8; j++) {
                var isAlt = true;
                if (j % 2 == 0) {
                    isAlt = true;
                } else {
                    isAlt = false;
                }
​
                if (i % 2 == 0) {
                    isAlt = !isAlt;
                }
​
                var cell = createCell(isAlt);
                myRow.appendChild(cell);
​
​
                var mycell = new Cell([i, j], null);
                myboard.cells.push(mycell);
​
            }
​
            theBoard.appendChild(myRow);
        }
    })
}
​
function createCell(isAlt) {
    var cell = document.createElement('div');
    cell.className = isAlt ? 'cell cell-alt' : 'cell';
    cell.setAttribute("ondrop", "drop(event)");
    cell.setAttribute("ondragover", "allowDrop(event)");
    return cell;
}
​
function createPiece(name) {
    var piece = document.createElement('img');
    piece.className = "piece";
    piece.setAttribute("draggable", "true");
    piece.setAttribute("ondragstart", "drag(event)");
    piece.src = "img\\" + name + ".png";
    piece.id = name;
    return piece;
}
​
function allowDrop(ev) {
    ev.preventDefault();
}
​
function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}
​
function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}
​
createBoard();
​






	