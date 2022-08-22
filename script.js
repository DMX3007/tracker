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
