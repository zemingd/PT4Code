package main
  
import (
    "fmt"
)

func main() {
    var s []byte
    fmt.Scan(&s)
    var cnt int
    var ps []byte
    var pb byte
    pb = ' '

    for _, b := range s {
        if pb == ' ' {
            if len(ps) > 1 {
                ps = []byte{b}
                cnt++
            } else {
                if len(ps) == 0 || b != ps[0] {
                    ps = []byte{b}
                    cnt++
                } else {
                    pb = b
                }
            }
        } else {
            ps = []byte{pb, b}
            cnt++
            pb = ' '
        }
    }

    fmt.Println(cnt)
}
