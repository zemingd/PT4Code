package main

import "fmt"

func main(){
    var num int
    fmt.Scan(&num)
    hours := num / 3600
    minutes := num % 3600 / 60
    seconds := num % 60
    fmt.Printf("%d:%d:%d\n", hours, minutes, seconds)
}
