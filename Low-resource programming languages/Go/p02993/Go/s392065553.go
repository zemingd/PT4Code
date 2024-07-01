package main
import (
        "fmt"
)

func main() {
        var s int
        fmt.Scanf("%d", &s)
        flg := false
        p := s % 10
        s /= 10
        for i := 0; i < 4; i++ {
                c := s % 10
                flg = flg || c == p
                p = c
                s /= 10
        }
        if flg {
                fmt.Println("Bad")
        } else {
                fmt.Println("Good")
        }

}
