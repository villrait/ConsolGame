import Foundation

class Character {
    var health: Int
    
    init(health: Int) {
        self.health = health
    }
    
    func attack(superAttack: Bool) -> Int {
        if superAttack {
            let superA = Int.random(in: 1...100) <= 50
            if superA {
                return Int.random(in: 10...50)
            } else {
                return 0
            }
        } else {
            return Int.random(in: 5...25)
        }
    }
    
    func takeDamage(amount: Int) {
        health -= amount
        if health < 0 {
            health = 0
        }
    }
    
    func isAlive() -> Bool {
        return health > 0
    }
}
