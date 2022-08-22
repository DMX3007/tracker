'use strict';

// import { readFileSync, promises as fsPromises } from 'fs';

class Table {
    /**
     * @param {string} activityValue
     */
    set activity(activityValue) {
        this.activity = activityValue;
    };
    /**
     * @param {number} durationValue
     */
    set duration(durationValue) {
        this.duration = durationValue;
    };
    /**
     * @param {any} barValue
     */
    set bar(barValue) {
        this.bar = barValue;
    };


    makeRaw() {
        // Put the name of activity into the table;

        const th = `<th class="activity">${this.activity}</th> <td class="duration">${this.duration}</td><td class="bar">${this.bar}</td>`;
        const place = document.querySelector('.table');
        const column = place.insertAdjacentHTML('beforeend', th);
    };
    createTable() {
        this.makeRaw();
    };
}



// {
//     "squadName": "Super hero squad",
//         "homeTown": "Metro City",
//             "formed": 2016,
//                 "secretBase": "Super Tower",
//                     "active": true,
//                         "members": [
//                             {
//                                 "name": "Molecule Man",
//                                 "age": 29,
//                                 "secretIndentity": "Dan Jukes",
//                                 "powers": [
//                                     "Radiation Resistance", "Turning tiny",
//                                     "Radiation blast"
//                                 ]
//                             },
//                             {
//                                 "name": "Madame Uppercut",
//                                 "age": 39,
//                                 "secretIdentity": "Jane Wilson",
//                                 "powers": ["Million tonne punch", "Damage resistance", "Superhuman reflexes"]
//                             },
//                             {
//                                 "name": "Eternal Flame",
//                                 "age": 100000,
//                                 "secretIdentity": "Unknown",
//                                 "powers": [
//                                     "Immortality", "Heat Immunity", "Inferno", "Teleportation", "Interdimensional travel"
//                                 ]
//                             }
//                         ]
// }

// If we loaded this into a JavaScript program, parsed it into a variable called superHeroes for example, we could then access the data inside it using the same dot/bracket notation we looked at in the JavaScript object basics article. For example:





// class Person {
//     name;
//     constructor(name) {
//         this.name = name;
//     }
//     introduceSelf() {
//         console.log(`Hi I'm ${this.name}`);
//     }
// }

// const per = new Person('boba')
// per.introduceSelf();

// class Proffesor extends Person {
//     teaches;
//     constructor(name, teaches) {
//         super(name);
//         this.teaches = teaches;
//     }
//     introduceSelf() {
//         console.log(`Hi I'm ${this.name} and I'll teach you ${this.teaches}`);
//     }
// }

// let nisha = new Proffesor('Nisha', 'Psyho');
// nisha.introduceSelf();

// class Student extends Person {
//     #year
// }

// const personProto = {
//     greet() {
//         console.log('Heelo');
//     }
// }

// const carl = Object.create(personProto);

// carl.greet();
//

// const myDate = new Date(1995, 7, 3);

// console.log(myDate.getMonth());

// myDate.getMonth = function () {
//     return "something else";
// }

// console.log(myDate.getMonth());


// let person = {
//     firstName: 'John',
//     lastName: 'Doe',
//     address: {
//         street: 'North 1st street',
//         city: 'San Jose',
//         state: 'CA',
//         country: 'USA'
//     }
// };


// let copiedPerson = Object.assign({}, person);

// copiedPerson.firstName = 'Jane'; // disconnected

// copiedPerson.address.street = 'Amphitheatre Parkway'; // connected
// copiedPerson.address.city = 'Mountain View'; // connected

// console.log(copiedPerson);

// function createPerson(name) {
//     const obj = {};
//     obj.name = name;
//     obj.inroduceSelf = function () {
//         console.log(`Hi I'm ${this.name}.`);
//     }
//     return obj;
// }

/* This function creates and returns a new object each rime we call it. The object will have two members:
- a property name
- a method introduceSelf();

NOte that createPerson() takes a parameter name to set the value of the nem property, but the value of the inrouduce Self() method will be theh same dfor all objecs created usig this function. This is a very commom pattern for creatin objects. Now we can create as many objects as we like, reusing the definition:
*/

// const salva = createPerson('Salva');

// salva.name;
// salva.inroduceSelf();

// const frankie = createPerson('frankie');

// frankie.name;
// frankie.inroduceSelf();

/* This works fine but is a bit ling-winded: we have to create an empty object , inirialize it , and retun it. A better way is to use a constructor. A constructor is just a function called  using the new keyword. When you call a consturceot it will:
- create a new object
- bing this to the new object, so you can refer to this in your constructior code
- run the code in the constructor
- return the new object.

Constructors by conbentoon start with a capital letter and are named for the type of object thet create. Se we could rewrite our exapmple like this:
*/

// function Person(name) {
//     this.name = name;
//     this.inroduceSelf = function () {
//         console.log(`HI I'm ${this.name}`);
//     }
// }

// // TO call Person() as a constructor we use new:

// const salve = new Person('Salve');

// // salve.name;
// salve.inroduceSelf();

// const frankii = new Person('fran');
// // frankii.name;
// frankii.inroduceSelf();


// You've been using objects all along

// As you've been goung through these examples, you have probably been thinking that the fot notation you'be been using is very familiar. That's ecause you've been using it tgroughout the cours! Every  time we'be been working through an example that uses a built - in browset API pr JavaScript object we've been using objecs, because such features are build using exacrly the same kind of obkect structures that we've been looking at here, albeit more complex ones thant in out own basic custom examples. 

// So when you used string methods like:

// const myStriing = "hello,world";

// myStriing.split(',');

// You were using a method availavle on a sSting object. Every time you create a string in your code, that string is automatically created as an instance of Steing, and therefore has several common methods and peorpeties availavle on it. 

//When you acessed toe doucument object model using lines like this:

// const myDiv = document.createElement('div');
// const myVideo = document.querySelector('video');

// You were using methods availavle on a Document object. For each webpage loaded, and instance of Document is created, called document, which represents the entire page's structure, content, and other features such as its URL. Again this means that it has several common methods properties available on it.

// The same is trus of pretty much any other built-in object or API you've been using - ARRAY, Math, and so on.

// NOte that built in objects and APIs  don't always create object instances automatically. As an examplem the Nitfication API - wich allows modern browsers to fire system notifivations requires you to instantiate a new object instatne using the contructor for each norification you want fo fire. Tey entering the folowing into you JavaScript console:

// you reached the end of this article , but can you remebert the most important information? You can find some further testt to virify that you'be retainded this information before you mobe on - see

// Test your skills: Object basics

// THe aim of this skill test is to assess whether you've understood our JavaSript object basics article. 

// Objects basics 1

//In this task you are procided with an object literalm and your taksk are to:

// - store the value of the name property inside tha catName ariable, using bracket notation.

// Run the greeting() method using dot notation(it will log the greeting to the browser's console.)

// Update the coor property valuee to black.

// Try updatin the live code below to recreate the finished example.

// const band = {
//     name: 'Rammstein',
//     nationality: 'Germany',
//     genre: 'Hard-Rock',
//     members: 6,
//     formed: 1994,
//     slpit: false,
//     albums: [{ name: 'Herzeleid', released: 1995 }, { name: 'Sehnsucht', released: 1997 }, {
//         name: 'Mutter',
//         released: 2001
//     }, { name: 'Reise, Reise', released: 2004 }, { name: 'Rosenrot', released: 2005 }, { name: 'Liebe ist fur alle da', released: 2009 }, { name: 'Rammstein', released: 2019 }, { name: 'Zeit', released: 2022 }],
//     writeIfro() {
//         console.log(`Hello we are the ${this.name}we are from ${this.nationality} our genre is ${this.genre} our team is ${this.members} members we formed ${this.formed} and still together. Check out our albums`);
//         for (const alb of this.albums) {
//             console.log(alb.name + ' ' + alb.released);
//         }
//     }
// }
// const bandInfo = band.writeIfro();

// let table = new Table();
// for (let i = 0; i < 5; i++) {
//     table.createTable();
// }

// const evtPhaseStr = ["NONE: ", "CAPTURING_PHASE: ", "AT_TARGET: ", "BUBBLING_PHASE: "];

// const logElement = document.getElementById('log');

// function log(msg) {
//     logElement.innerHTML += (`<p>${msg}</p>`);
// }

// function phase(evt) {
//     // console.log(evtPhaseStr[evt.eventPhase]);
//     log((evtPhaseStr[evt.eventPhase]) + this.firstChild.nodeValue);
//     // console.log((evtPhaseStr[evt.eventPhase]) + this.firstChild);
//     // console.log(this);
// }

// function gphase(evt) {
//     log(evtPhaseStr[evt.eventPhase] + evt.currentTarget.toString().slice(8, -1));
// }

// function clearOutput(evt) {
//     evt.stopPropagation();
//     logElement.innerHTML = '';
// }

// // const divs = document.querySelectorAll('div');
// const divs = document.getElementsByTagName('div');

// for (const div of divs) {
//     div.addEventListener('click', phase, true);
//     div.addEventListener('click', phase, false);
// }

// document.addEventListener('click', gphase, true);
// document.addEventListener('click', gphase, false);
// window.addEventListener('click', gphase, true);
// window.addEventListener('click', gphase, false);

// const clearButton = document.getElementById('clear');
// clearButton.addEventListener('click', clearOutput);

// document.querySelector('button').addEventListener('click', phase);

// const divs = document.querySelectorAll('.tile');

// console.log(document.querySelector('button'));

// function random(number) {
//     return Math.floor(Math.random() * (number + 1));
// }

// function changeColor(e) {
//     const randCal = `rgb(${random(255)},${random(255)},${random(255)})`;
//     e.currentTarget.style.backgroundColor = randCal;
// }

// for (const div of divs) {
//     div.addEventListener('click', changeColor);
// }

// const btn = document.querySelector('.off');
// let old = 'Machine is on';
// let newOne = 'Machine is off';

// btn.addEventListener('click', () => {
//     if (btn.textContent === old) {
//         btn.textContent = newOne;
//     } else {
//         btn.textContent = old;
//     }
// });

// const canvas = document.querySelector('canvas');
// const ctx = canvas.getContext('2d');

// function drawCircle(x, y, size) {
//     ctx.fillStyle = 'white';
//     ctx.fillRect(0, 0, canvas.width, canvas.height);

//     ctx.beginPath();
//     ctx.fillStyle = 'black';
//     ctx.arc(x, y, size, 0, 2 * Math.PI);
//     ctx.fill();
// }

// let x = 50;
// let y = 50;
// const size = 30;

// drawCircle(x, y, size);

// Add your code here

// canvas.addEventListener('keydown', (e) => {
//     console.log(e.code);
//     if (e.code === 'KeyW') {
//         y -= 5;
//         drawCircle(x, y, size);
//     } else if (e.code === 'KeyS') {
//         y += 5;
//         drawCircle(x, y, size);
//     } else if (e.code === 'KeyA') {
//         x -= 5;
//         drawCircle(x, y, size);
//     } else if (e.code === 'KeyD') {
//         x += 5;
//         drawCircle(x, y, size);
//     };
// });

// const btn = document.querySelector('.button-bar');

// btn.addEventListener('click', (e) => {
//     const text = e.target.childNodes;
//     const color = text['0'].textContent;
//     e.target.style.backgroundColor = color;
// });

// const { readFileSync, promises: fsPromises, read } = require('fs');

// let file = document.getElementById('file').files[0];
// const fileSelector = document.getElementById('file');
// // console.log(fileSelector);
// console.log(file);

// fileSelector.addEventListener('change', (event) => {
//     const fileList = event.target.files;
//     // console.log(fileList);
// });

// // const btn = document.querySelector('button');

// function random(number) {
//     return Math.floor(Math.random() * (number + 1));
// }

// function changeColor(e) {
//     const randColor = `rgb(${random(255)},${random(255)},${random(255)})`;
//     e.target.style.backgroundColor = randColor;
//     console.log(e)
// }
// const controller = new AbortController();

// btn.addEventListener('click', changeColor, { signal: controller.signal });

// const input = document.querySelector('#in');
// const output = document.querySelector('#out');

// input.addEventListener('keydown', (e) => output.textContent = `You pressed ${e.key}`);;

// const form = document.querySelector('form');
// const fname = document.getElementById('fname');
// const sname = document.getElementById('sname');
// const p = document.querySelector('p');

// form.addEventListener('submit', (e) => {
//     if (fname.value === '' || sname.value === '') {
//         e.preventDefault();
//         p.textContent = "You should fill all fields";
//     }
// })

// const container = document.querySelector('.container');
// const outpet = document.querySelector('#outpet');
// // const but = document.querySelector('button');

// function handleClick(e) {
//     outpet.textContent += `You clicked on ${e.currentTarget.tagName} element\n`;
// }

// container.addEventListener('click', handleClick);
// // but.addEventListener('click', handleClick);
// document.body.addEventListener('click', handleClick);

// const btn = document.querySelector('button');
// const video = document.querySelector('div');
// console.log(btn)
// console.log(video)

// function displayVideo() {
//     if (video.getAttribute('class') === 'hidden') {
//         video.setAttribute('class', 'visible');
//     } else {
//         video.setAttribute('class', 'hidden');
//     }
// }

// const vi = document.querySelector('video');

// video.addEventListener('click', () => { video.setAttribute('class', 'hidden') });

// vi.addEventListener('click', () => { vi.play() });

// const btn = document.querySelector('button');
// const videoBox = document.querySelector('.hidden');

// function displayVideo() {
//     if (videoBox.getAttribute('class') === 'hidden') {
//         videoBox.setAttribute('class', 'visible');
//     } else {
//         videoBox.setAttribute('class', 'hidden');
//     }
// }

// btn.addEventListener('click', displayVideo);

// controller.abort();

// let reader = new FileReader();
// console.log(reader.readAsText(file, 'UTF-8'));
// reader.readAsText()
// reader.onload = function (evt) {
//     // document.getElementById('content').innerHTML = evt.target.result;
//     console.log(evt.target.result);

//     reader.onerror = function (evt) {
//         document.getElementById('content').innerHTML = "error reading file";
//     };
// }

/// 1. Implement basic structure:
// 1.1 Make raw;
// 1.2 Make column;
//

// Import the file
// Set data
//  
// FIll by color;

// How to determine size of table: 
    // we can get default size of table... 10 rows;
    // and we can get the whole activities there;

    /////////// NODE JS ///////////////////////////////
    // let arr = [];

// function syncReadFile(filename) {
//     const contents = readFileSync(filename, 'utf-8');
//     arr = contents.split('\n');
//     console.log(arr);
// }

// syncReadFile('./story.txt');

//////////////////////////////////////////////////////////