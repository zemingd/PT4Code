package main

import (
        "fmt"
        "strings"
)

func confirm(t string) bool {
        z := []string{"dreamer", "dream", "eraser", "erase"}
        m := t
        for len(m) > 0 {
                for _, v := range z {
                        if strings.HasSuffix(m, v) {
                                pos := strings.LastIndex(m, v)
                                if pos != 0 {
                                        m = v[0:pos]
                                } else {
                                        m = strings.Replace(m, v, "", 1)
                                }
                        }
                }
                if len(m) == len(t) {
                        break
                }
        }
        if len(m) == 0 {
                return true
        }
        return false
}

func main() {
        s := ""
        fmt.Scan(&s)

        t := s
        is := confirm(t)
        if is {
                fmt.Println("YES")
                return
        }
        fmt.Println("NO")
}