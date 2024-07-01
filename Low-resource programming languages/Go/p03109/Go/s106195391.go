package main
  
import (
    "fmt"
    "strings"
)

func main() {
    var s []byte
    fmt.Scan(&s)
    ss := strings.Split(string(s), "/")
    switch ss[1] {
    case "01", "02", "03", "04":
        fmt.Println("Heisei")
    default:
        fmt.Println("TBD")
    }
}
