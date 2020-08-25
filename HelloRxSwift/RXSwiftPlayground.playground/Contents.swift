import UIKit
import RxSwift

var str = "Hello, playground"

//let o1 = Observable.just(1)
//let o2 = Observable.of(1,2,3)
//let o3 = Observable.of([1,2,3])
//let o4 = Observable.from([1,2,3,4,5])
//
//o4.subscribe { event in
//    print("event = \(event)")
//    if let e = event.element {
//        print("eventNew = \(e)")
//    }
//}
//
//o3.subscribe { event in
//    print("event3 = \(event.map{$0})")
//    if let e = event.element {
//        print("eventNew3 = \(e[0])")
//    }
//}
//
//let sub4 = o4.subscribe(onNext: { (i) in
//    print("num = \(i)")
//})
//
//sub4.dispose()

let disposeBag = DisposeBag()

//Observable.of(1,2,3)
//    .subscribe{
//        print("val = \($0)")
//}.disposed(by: disposeBag)
//
//Observable<String>.create { (observer) in
//    observer.onNext("A")
//    observer.onCompleted()
//    observer.onNext("?")
//    return Disposables.create()
//}.subscribe(onNext: {print("Val = \($0)")}, onError: {print("error = \($0)")}, onCompleted: {print("CompletedAndDone")}, onDisposed: {print("Diposed")})
//.disposed(by: disposeBag)

let subject = PublishSubject<String>()

subject.subscribe { event in
    
    print("event = \(event)")
}

subject.subscribe { event in
    
    print("event = \(String(describing: event.element))")
}

subject.onNext("1")
subject.onNext("2")

subject.dispose()
//subject.onCompleted()
subject.onNext("3")

let sub = BehaviorSubject(value: "last value")
sub.onNext("New Value2")
sub.subscribe { event in
    print("event = \(event)")
}

sub.onNext("New Value")


let replaySub = ReplaySubject<String>.create(bufferSize: 2)

replaySub.onNext("issues 1")
replaySub.onNext("issues 2")
replaySub.onNext("issues 3")

replaySub.subscribe { (event) in
    print("rep-event = \(event)")
}

replaySub.onNext("issues 4")
replaySub.onNext("issues 5")
replaySub.onNext("issues 6")
replaySub.onNext("issues 7")

replaySub.subscribe { (event) in
    print("rep-event2 = \(event)")
}
