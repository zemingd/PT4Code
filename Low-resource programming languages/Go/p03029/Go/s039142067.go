package main
  
import (
    "fmt"
)

func main() {
    var a, p int
    fmt.Scan(&a, &p)
    n := int(a*3+p) / 2
    fmt.Println(n)
}
