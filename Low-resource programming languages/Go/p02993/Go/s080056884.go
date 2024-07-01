package main
  
import (
    "fmt"
)

func main() {
    var s []byte
    fmt.Scan(&s)
    var bad bool
    for i := 0; i < 3; i++ {
        if s[i] == s[i+1] {
            bad = true
        }
    }
    if bad {
        fmt.Println("Bad")
    } else {
        fmt.Println("Good")
    }
}
