import UIKit
var arr = (0...200).map{_ in arc4random_uniform(100)}
var firstRepeatIndex = -1;
var greeting = "--------------Задание 1--------------\nСгенерировать массив случайных чисел (например 200 чисел). Найти индекс первого повторяющегося числа в массиве. Если все числа разные - то -1.";
print(greeting);

print("\nНачальный массив:");
print(arr);
var i = 0;

while (i < arr.count && firstRepeatIndex == -1) {
    for j in i+1..<arr.count {
        if (arr[i] == arr[j]) {
            firstRepeatIndex = i;
            break;
        }
    }
    i+=1;
}

print("\nИндекс первого повторяющегося элемента массива: \(firstRepeatIndex)");


