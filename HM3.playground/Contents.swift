//import UIKit
print("--------------------Задание 1--------------------\nНаписать класс, ответственный за вычисления - класс для инициализации принимает 2 переменных - числа, по умолчанию числа равны нулю. Класс умеет посредством методов выполнять стандартные арифметические операции - сложение / вычитание / умножение / деление. Каждая из функций возвращает результат\n")

class Calc {
    var a: Int = 0;
    var b: Int = 1;
    
    init(a: Int, b: Int) {
        self.a = a;
        self.b = b;
    }
    
    func addition() -> Int {
        return (self.a + self.b);
    }
    
    func subtraction() -> Int {
        return (self.a - self.b);
    }
    
    func multiplication() -> Int {
        return (self.a * self.b);
    }
    
    func division() -> Int {
        return (self.a / self.b);
    }
}

let calc = Calc(a:16, b:4);
print("addition = ", calc.addition());
print("subtraction = ", calc.subtraction());
print("multiplication = ", calc.multiplication());
print("division = ", calc.division());


print("\n\n--------------------Задание 2--------------------\nОпределить сущности геометрических фигур (например треугольник, квадрат, круг и тд), реализовать функцию описания у фигур, реализовать общий класс фигура - который содержит в себе описание, количество углов, функцию draw() (рисовать не нужно, можно просто вывести в консоль что-нибудь) - переопределить соотвествующие методы у сабклассов.\n")

class Figure {
    var name: String = "";
    var desc: String = "";
    var corners: Int = 0;
    
    init(name: String, desc: String, corners: Int) {
        self.name = name;
        self.desc = desc;
        self.corners = corners;
    }
    
    func draw () {
        print("super class")
    }
}

class Triangle: Figure {
    var a: Int = 0;
    var b: Int = 0;
    var c: Int = 0;
    
    init(name: String, desc: String, corners: Int, a: Int, b: Int, c: Int){
        self.a = a;
        self.b = b;
        self.c = c;
        super.init(name: name, desc: desc, corners: corners);
    }
    
    func descPrint () {
        print("\(self.desc) \(self.name)")
    }
    
    override func draw() {
        print("Рисуем треугольник \(self.name)")
    }
}

class Square: Figure {
    var a: Int = 0;
    
    init(name: String, desc: String, corners: Int, a: Int){
        self.a = a;
        super.init(name: name, desc: desc, corners: corners);
    }
    
    func descPrint () {
        print("\(self.desc) \(self.name)")
    }
    
    override func draw() {
        print("Рисуем квадрат \(self.name)")
    }
}


let triangle = Triangle(name: "ABC", desc: "Равносторонний трегоулольник", corners: 3, a: 2, b: 2, c: 1)
triangle.draw()

let square = Square(name: "ABCD", desc: "Квадратный квадтра", corners: 4, a: 2)
square.draw()
