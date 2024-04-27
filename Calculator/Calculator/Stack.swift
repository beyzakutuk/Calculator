//
//  Stack.swift
//  Calculator
//
//  Created by Beyza Kütük on 27.04.2024.
//

import Foundation

struct Stack<T> { // içerisinde farklı veri tipleri tutabilmek için T kullandık.
    
    private var elements = [T]()
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    //  stack gibi veri yapısında, elemanları eklemek veya çıkarmak gibi işlemler yapıyı değiştirir, bu yüzden bu tür fonksiyonlar mutating olarak işaretlenir.
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    // Stack'teki en üstteki elemanı gösteren fonksiyon (peek)
    func peek() -> T? {
        return elements.last
    }
}
