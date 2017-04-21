//Euler prroblem 1 Multiples of 3 and 5
//O(n/3) time complexity

var mult3And5 = function(number) {
    var sum = 0;
    var threes = 3;
    var fives = 5;

    for(;threes < number || fives < number; threes += 3, fives += 5) {
        if (fives < number && fives % 3 != 0) {
            sum += fives;
        }
        if (threes < number) {
            sum += threes;
        }
    }
    return sum;
}

console.log("Final " + mult3And5(1000));
