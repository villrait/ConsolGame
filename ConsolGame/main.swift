import Foundation

let playerCharacter = Character(health: 100)
let enemyCharacter = Character(health: 100)

let game = Game(player: playerCharacter, enemy: enemyCharacter)
game.start()


/*
struct Character {
    var health = 100
    var attack = 0
    
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
}


func battle(player: inout Character, enemy: inout Character) {
    print("Игра началась")
    
    while player.health > 0 && enemy.health > 0 {
        print("Выберите тип удара")
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
            enemy.health -= playerHit
        } else {
            print("Игрок промахнулся")
        }
        
        if enemy.health > 0 {
            print("Противник наносит на \(enemyHit) единиц урона")
            player.health -= enemyHit
        }
        
        if player.health < 0 {
            player.health = 0
        }
        
        if enemy.health < 0 {
            enemy.health = 0
        }
        
        print("------------------------------")
        print("Здоровье игрока \(player.health)")
        print("Здоровье противника \(enemy.health)")
        print("==============================")
    }
}

var player = Character()
var enemy = Character()

battle(player: &player, enemy: &enemy)

*/
