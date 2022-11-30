'use strict';

class Table {
    constructor(activityValue, durationValue, barValue) {
        this.activity = activityValue;
        this.duration = durationValue;
        this.bar = barValue;
    }
    makeRow() {
        // Put the name of activity into the table;
        const theme = `<th class="activity">${this.activity}</th> <td class="duration">${this.duration}</td><td class="bar">${this.bar}</td>`;
        const place = document.querySelector('.table');
        const column = place.insertAdjacentHTML('beforeend', theme);
    };
    createTable() {
        this.makeRow();
    };
}

const positive = ['anki', 'bash', 'code', 'css', 'edclub', 'git', 'habr', 'html', 'javascript', 'js', 'learn', 'leetcode', 'mdn', 'programming', 'react', 'smp', 'study', 'stack', 'практикум',];

function splitFile(content) {
    return content.split("\n");
}

// function (array) {
//     kol - vo el v massive; length;
//     for (el of array) {
//     }
// }

// function readFile() {
//     const [file] = document.querySelector('input[type=file]').files;
//     const reader = new FileReader();

//     reader.addEventListener('load', (e) => {
//         const content = reader.result;
//         let splitedByEnters = splitFile(content);

//     }, false);
//     if (file) {
//         reader.readAsText(file);
//     }
// }


readFile();
console.log(arr)
const table = new Table("activity", 2, "hello");


// Tasks: 
// 1. [anki]=0 
// [bash] = 0
// [code] = 0
// [css] = 0
// [edclub] = 0
// [git] = 0
// [habr] = 0
// [html] = 0
// [javascript] = 0
// [js] = 0
// [learn] = 0
// [leetcode] = 0
// [mdn] = 0
// [programming] = 0
// [react] = 0
// [smp] = 0
// [study]
// [stack]
// [практикум]

// We has set of data, with keywords,
// 1 - We should display 2 sides ,wasted time and spended with our goals.
//      1.1 Get the amount of positive strings;
//      1.2 Get the amount of wasted strings;
//      Display it;