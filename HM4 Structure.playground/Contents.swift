struct User {
    var name: String;
    let surname: String;
    let man: Bool;
    
    func getInfo() {
        print("name \(self.name) surname \(self.surname)")
    }
}

var users = [
    User(name: "user1", surname: "String1", man: false),
    User(name: "user2", surname: "String2", man: false),
    User(name: "user3", surname: "String3", man: true),
    User(name: "user4", surname: "String4", man: false),
]

print("Исходный список пользователей:\n")
for user in users {
    user.getInfo();
}

users[1].name = "newName";

print("\nИзмененный список пользователей:")
for user in users {
    user.getInfo();
}

