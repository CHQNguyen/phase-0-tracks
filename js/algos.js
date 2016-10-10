//Function to pull the longest word out of an array
//.length will tell use how how many letters in a word
//FOR loop can loop through an array and return our longest word
var array = ["First", "Second", "Third"];

function longestString(input) {
    // return the longest string in the array
    var longest = 0;
    var longestString = "";
    for (var i = 0; i < array.length; i++) {
    	//if length of array an index is longer then longest 
        if (array[i].length > longest) {
        //then we the item = longest
        longest = array[i].length;
        //until the longest item is found
        longestString = array[i];
        }
    }
    return longestString;
}

console.log(longestString(array));

//Function that looks for similar key value and either return true or false
//FOR loop can loop through an array and check for us
var array = ["First", "Second", "Third", "Fourth", "Fifth"];

//function take array you want to search and item you're searching for
function matchKey(arr, obj) {
    for(var i=0; i<arr.length; i++) {
    	//if item in the index of your array match then return true
        if (arr[i] == obj) return true;
    }
}

console.log(matchKey(array, "First"))


//function that generate random words

function randomString(len) {
	//random character set
    charSet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    //outcome set to blank
    var randomString = '';
    //FOR loop through length of input
    for (var i = 0; i < len; i++) {
    	//length of input divided out to get back random string
    	var randomPoz = Math.floor(Math.random() * len);
    	//add random character to each length
    	randomString += charSet.substring(randomPoz,randomPoz+1);
    }
    return randomString;
}

console.log(randomString(9))