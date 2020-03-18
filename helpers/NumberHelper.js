function convertNumber(input) {
    var output = parseInt(input, 10)+1; // parse and increment
    output += ""; // convert to string
    while (output.length<2) output = "0"+output; // prepend leading zeros
    return output;
}