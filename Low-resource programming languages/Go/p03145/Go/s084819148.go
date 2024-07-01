package main

import (
    "fmt"
)

func main() {
    var ab, bc, ca int 
    fmt.Scan(&ab, &bc, &ca)
    res := ab * bc / 2 
    fmt.Println(res)
}
