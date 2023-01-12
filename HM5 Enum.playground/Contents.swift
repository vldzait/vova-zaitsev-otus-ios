import Foundation



enum AppleDevices: CustomStringConvertible {
    case iphone (name: String, displaySize: CGSize)
    case ipad (name: String, displaySize: CGSize, isIpad: Bool)
    
    var description: String {
        switch self {
        case let .iphone(name, displaySize):
            return "Device name \(name) with display size \(displaySize.height)x\(displaySize.width) pixel";
        case let .ipad(name, displaySize, _):
            return "Device name \(name) with display size \(displaySize.height)x\(displaySize.width) pixel";
        }
    }
}

let device1: AppleDevices = .iphone(name: "iphone 5s", displaySize: CGSize(width: 640, height: 1136));
let device2: AppleDevices = .iphone(name: "iphone 6s", displaySize: CGSize(width: 750, height: 1334));
let device3: AppleDevices = .iphone(name: "iphone 7 plus", displaySize: CGSize(width: 1080, height: 1920));
let device4: AppleDevices = .ipad(name: "ipad air 2022", displaySize: CGSize(width: 1640, height: 2360), isIpad: true);
let device5: AppleDevices = .ipad(name: "ipad mini 5", displaySize: CGSize(width: 1536, height: 2048), isIpad: true);

print(device1.description)
print(device5.description)

