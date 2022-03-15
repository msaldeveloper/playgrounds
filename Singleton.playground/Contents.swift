import UIKit

class Asingleton {
    
    static var sharedInstance : Asingleton = Asingleton()
    
    private init(){
        
    }
    
    func doSomething() {
        print("Doing something")
    }
}

Asingleton.sharedInstance.doSomething()

//let newInstance : Asingleton = Asingleton()

class MessageRecorder {
    static var sharedInstance: MessageRecorder = MessageRecorder()//se usa para acceder a las funciones de la clase
    
    private var message : String = ""
    
    private init() {
        
    }
    func updateMessage(message : String){
        self.message = message
    }
    
    func getMessage() -> String {
        return message
    }
}

MessageRecorder.sharedInstance.updateMessage(message: "hola")
print(MessageRecorder.sharedInstance.getMessage())


class Client {
    
    var message : String = ""
    
    init(message : String){
        self.message = message
    }
    
    func setUpMessageToSingleton() {
        MessageRecorder.sharedInstance.updateMessage(message: self.message)
    }
    
    func obtainMessage()-> String{
        return MessageRecorder.sharedInstance.getMessage()
    }
}

let clienteA : Client = Client(message: "A")

clienteA.setUpMessageToSingleton()

print(MessageRecorder.sharedInstance.getMessage())
