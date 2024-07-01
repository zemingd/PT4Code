package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main(){
    sc.Split(bufio.ScanWords)
    monsterLife := nextInt()
    attack := nextInt()
    
    if (monsterLife % attack > 0) {
        fmt.Println(monsterLife / attack + 1)
    } else {
        fmt.Println(monsterLife / attack)
    }
}
