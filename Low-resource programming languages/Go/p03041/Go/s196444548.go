package main
  
import (
    "fmt"
)

func main() {
    var n, k int
    fmt.Scan(&n, &k)
    var bs []byte
    fmt.Scan(&bs)
    for i := range bs {
        if i == k-1 {
            switch bs[i] {
            case 'A':
                fmt.Print("a")
            case 'B':
                fmt.Print("b")
            case 'C':
                fmt.Print("c")
            }
        } else {
            fmt.Print(string([]byte{bs[i]}))
        }
    }
    fmt.Print("\n")
}
