import Foundation

class Game {
    var player: Character
    var enemy: Character
    
    init(player: Character, enemy: Character) {
        self.player = player
        self.enemy = enemy
    }
    
    func start() {
        print("Игра началась")
        
        while player.isAlive() && enemy.isAlive() {
            print("Выбери тип удара")
            print("1 Обычный: урон от 5 до 25 единиц")
            print("2 Суперудар: урон от 10 до 50 единиц, промах в 50%")
            
            var choice = 0
            var isValidChoice = false
            
            while !isValidChoice {
                guard let input = readLine(), let selected = Int(input) else {
                    print("Неверный выбор")
                    continue
                }
                
                if selected == 1 || selected == 2 {
                    choice = selected
                    isValidChoice = true
                } else {
                    print("Неверный выбор")
                    continue
                }
            }
            
            let playerHit = player.attack(superAttack: choice == 2)
            let enemyHit = enemy.attack(superAttack: false)
            
            if playerHit > 0 {
                print("Игрок наносит урона на \(playerHit) единиц")
                enemy.takeDamage(amount: playerHit)
            } else {
                print("Игрок промахнулся")
            }
            
            print("------------------------------")
            print("Здоровье игрока \(player.health)")
            print("Здоровье противника \(enemy.health)")
            print("==============================")
        }
        
        print("Игра окончена")
        if player.isAlive() {
            print("Вы победили")
        } else {
            print("Вы проиграли")
        }
    }
}
