package main
  
import (
    "fmt"
)

func main() {
    var a, b, c int
    fmt.Scan(&a, &b, &c)
    fmt.Println(max(c-(a-b), 0))
}

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}
