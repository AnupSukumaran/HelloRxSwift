import UIKit
import RxSwift

let disposeBag = DisposeBag()

let variable =  Variable("inital value")

let variableArr =  Variable([String]())

variable.value = "Hello world"

variable.asObservable()
    .subscribe {
        print("val = \($0)")
}

variableArr.asObservable()
    .subscribe {
        print("val = \($0)")
}

variableArr.value.append("Item1")
variableArr.value.append("Item2")
