func soma(_ v1: Int?, _ v2: Int? = nil) -> Int? {
    // f1
    // return v1! + v2!
    
    // f2
    //    if let n1 = v1, let n2 = v2 {
    //        return n1 + n2
    //    }
    //    return nil
    
    //f3
    guard let v1 = v1 else {
        return nil
    }

    guard let v2 = v2 else {
        return nil
    }

    return v1 + v2
    
    // f4
    // return (v1 ?? 0) + (v2 ?? 0) uma bosta
}

print(soma(10))
