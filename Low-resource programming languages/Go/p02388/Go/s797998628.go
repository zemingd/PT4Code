package main

import(
    "fmt"
    "math"

func main(){
    var x int
    fmt.Scanf(&x)
    x = math.pow(x, 3)
    fmt.Println(x)
}
