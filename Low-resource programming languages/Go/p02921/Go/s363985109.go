package main
  
import (
    "fmt"
)

func main() {
    var s, t []byte
    fmt.Scan(&s)
    fmt.Scan(&t)
    var cnt int
    for i := 0; i < 3; i++ {
        if s[i] == t[i] {
            cnt++
        }
    }
    fmt.Println(cnt)
}
