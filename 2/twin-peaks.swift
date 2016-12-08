let totalGem = randomNumberOfGems 
let expert = Expert()
let character = Character()
var gem = 0

world.place(expert, facing: .north, atColumn: 1, row: 4)
world.place(character, facing: .south, atColumn: 4, row: 6)
func turnLock(up: Bool, numbersOfTimes: Int) {
    for i in 1 ... numbersOfTimes {
        if up == true {
            expert.turnLockUp()
        } else {
            expert.turnLockDown()
        }
    }
}
func jump(distance: Int) {
    for i in 1 ... distance {
        if  character.isOnGem {
            character.collectGem()
            gem += 1
        }
        character.jump()
    }
}
func move(distance: Int) {
    for i in 1 ... distance {
        if  character.isOnGem {
            character.collectGem()
            gem += 1
        }
        character.moveForward()
    }
}
func generalFunc() {
    move(distance: 6)
    character.turnRight()
    character.moveForward()
    character.turnRight()
    jump(distance: 6)
    character.turnRight()
    character.turnRight()
    jump(distance: 6)
    character.turnLeft()
    character.moveForward()
    character.turnLeft()
}
turnLock(up: true, numbersOfTimes: 3)
while gem < totalGems {
    generalFunc()
}
