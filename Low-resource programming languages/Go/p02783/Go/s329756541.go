package main

import (
    "fmt"
)

func main(){
    var monsterLife, attackNum, attack int
    fmt.Scan(&monsterLife, &attackNum)
    
    sum := 0
    
    for i := 0; i < attackNum; i++ {
        fmt.Scan(&attack)
        sum += attack
    }
    
    if monsterLife <= sum {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}
