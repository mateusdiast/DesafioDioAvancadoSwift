import Foundation

// This is simply project using Object Oriented Programming

class Client {
    
    private var cpf: String
    private var birtday: Int
    private var name: String
    private var balance: Double = 0.0
    private var result: Double = 0.0
    
    
    init(cpf: String, birtday: Int, name: String) {
        self.cpf = cpf
        self.birtday = birtday
        self.name = name
    }
    
}


extension Client {
    func getName() -> String {
        return self.name
    }
    
    func getCpf() -> String{
        return self.cpf
    }
    
    func getBirtday () -> Int{
        return self.birtday
    }
    
    func setDeposite(value: Double) {
        self.balance = value
    }
    
    func getBalance() async -> Double {
        return self.balance
    }
    
    func draw(value: Double)  async  -> Double {
        var balance =  await self.getBalance()
        if value <= balance {
            self.result = value - balance
            print("The \(self.getName()) was successful in the operation ")
            return self.result
        } else {
            print("The \(self.getName()) don't has a balance for this operation.")
            
        }
        
      return self.result
        	
    }
}




let client1 = Client(cpf: "000000000", birtday: 16081999, name: "Muhammad Ali")

client1.setDeposite(value: 800.0)

Task{
    await client1.draw(value: 900.0)
}




