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