//: Playground - noun: a place where people can play

import UIKit

////Phương án 1
//print("======================\n\tPHƯƠNG ÁN 1")
//
//let queue1 = DispatchQueue(label: "queue1", qos: .userInitiated)
//let queue2 = DispatchQueue(label: "queue2", qos: .userInitiated)
//let queue3 = DispatchQueue(label: "queue3", qos: .userInitiated)
//
//queue1.async {
//    for i in 1...9 {
//        print("🔴 \(i)")
//    }
//}
//queue2.async {
//    for i in 100...109 {
//            print("🔵 \(i)")
//    }
//}
//queue3.async {
//    for i in 1000...1009 {
//        print("⚫️ \(i)")
//    }
//}

//
////Phương án 2
print("======================\n\tPHƯƠNG ÁN 2")

let queue = DispatchQueue(label: "queue", qos: .default, attributes: .concurrent)

queue.async {
    for i in 1...9 {
        print("🔴 \(i)")
    }
}
queue.async {
    for i in 100...109 {
            print("🔵 \(i)")
    }
}
queue.async {
    for i in 1000...1009 {
        print("⚫️ \(i)")
    }
}

