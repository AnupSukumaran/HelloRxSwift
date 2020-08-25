import UIKit
import RxSwift
import RxRelay
let disposeBag = DisposeBag()

let relay = BehaviorRelay(value: "Inital Value")


relay.asObservable()
    .subscribe{print("val = \($0)")}

relay.accept("New1")
relay.accept("New2")

let relayArr = BehaviorRelay(value: [String]())


relayArr.accept(["NewVal1"])
relayArr.accept(["NewVal1", "NewVal2", "NewVal3"])

relayArr.asObservable()
.subscribe{print("val1 = \($0)")}


let relayArr2 = BehaviorRelay(value: ["NewTest"])


relayArr2.accept(relayArr2.value + ["NewVal1"])


relayArr2.asObservable()
.subscribe{print("val2 = \($0)")}

var transVal = relayArr2.value

transVal.append("NewForm1")
transVal.append("NewForm2")

relayArr2.accept(transVal)
