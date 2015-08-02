// Playground - noun: a place where people can play

import UIKit

//basic variables
var str = "Hello, playground"
var a = 3.5
var b = 4
var c = Double(a) * Double(b)
var d:String = "\(a)  times  \(b) is  \(c)"

//arrays
var arr = [1,2,3,4,5,6]

//append arr
arr.append(7)

//count
arr.count

//remove value from index 3 == 4
arr.removeAtIndex(3)

//print value at index 1
arr[1];

var arrMix = [1, "2", "Kri"]

//int specific array
var arrInt:[Int]


/// DICTIONARY
var dict = ["name":"krish", "addr":"CA", "gender":"male"]

println(dict["addr"]!)

dict["haircolor"] = "black"

println(dict);

dict["addr"]="boston";

dict["addr"]=nil;

var name = dict["name"]!;

var sentence = "my name is " + name;

////For loop
for(var i = 0; i < 6; i++) {
    println(i);
}

var arrArr = [2,4,6,8];
for x in arrArr {
    println(x)
}


for(index, x) in enumerate(arrArr){
    arrArr[index] = x + 3
}

println(arrArr);

var arrNum = [2,4,6,8,10]
for(index, x) in enumerate(arrNum) {
    arrNum[index] = x/2;
}
println(arrNum)


//prime experiment

var number = 19;
var isPrime = false;

if(number <= 0) {
    println("Enter a valid natural number");
} else if(number == 1 || number == 2) {
    isPrime = true;
} else {
    for(var j=2; j < number; j++){
        if(number%j==0){
            isPrime = false;
            break;
        }
        
        isPrime = true;
    }
}
println(isPrime)