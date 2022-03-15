import UIKit
import Combine
import Foundation

enum WeatherError : Error {
    case thingsJustHappen
}

let weatherPublisher = PassthroughSubject<Int, WeatherError>()

let suscriber = weatherPublisher
    .sink

weatherPublisher.send(10)
