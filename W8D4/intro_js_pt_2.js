// Object Oriented JS

// Phase I - Callbacks

// defining the function
function titleize(names, callback) {
    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

// invoking the function
titleize(["Mary", "Brian", "Leo"], (names) => {
    names.forEach(name => console.log(name));
});

titleize(["Mary", "Brian", "Leo"], callback);

function.Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function() {
    this.height = this.height + 12;
};

Elephant.prototype.addTrick = function() {
    this.tricks = this.tricks.push('be free')
};

Elephant.prototype.play = function() {
    
}