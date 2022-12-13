import UIKit

var greeting = "--------------Задание 1--------------\nЕсть произвольный массив чисел, найти максимальное и минимальное число и поменять их местами";
print(greeting);
var arr = (1...10).map{_ in arc4random_uniform(100)}
print("\nНачальный массив:");
print(arr);
var maxElement = arr[0];
var minElement = arr[0];

var maxIndex = 0;
var minIndex = 0;

for i in 1..<arr.count {
    if (maxElement < arr[i]) {
        maxElement = arr[i];
        maxIndex = i;
        continue;
    }
    if (minElement > arr[i]) {
        minElement = arr[i];
        minIndex = i;
        continue;
    }
}

print("\nmax el arr[\(maxIndex)] = \(maxElement)");
print("min el arr[\(minIndex)] = \(minElement)");

arr[maxIndex] = minElement;
arr[minIndex] = maxElement;

print("\nИтоговый массив:");
print(arr);


greeting = "\n\n\n--------------Задание 2--------------\nЕсть два массива символов - собрать результирующее множество из символов, что повторяются в 2х массивах";
print(greeting);

let arr2: [Character] = ["a", "b", "c", "d", "e", "f"];
let arr3: [Character] = ["i", "n", "b", "d", "m", "f"];

print("\nПервый массив символов:");
print(arr2);
print("Второй массив символов:")
print(arr3);

var setForArr2: Set<Character> = Set(arr2);
var setForArr3: Set<Character> = Set(arr3);

print("\nИтоговое множество:")
print(setForArr2.intersection(setForArr3));

greeting = "\n\n\n--------------Задание 3--------------\nСоздать словарь с соотношением имя (ключ) пользователя - пароль (значение), получить из словаря все имена, пароли которых длиннее 10 символов";
print(greeting);

let users: [String: String] = [
    "user1": "12345678901",
    "user2": "12345678902",
    "user3": "123nd",
    "user4": "12345678904",
    "user5": "dfdffd",
    "user6": "ew",
];
print("\nСписок пользователей, пароли которых длинне 10 символов:");
for(user, password) in users {
    if (password.count > 10) {
        print("\(user)")
    }
 
}
