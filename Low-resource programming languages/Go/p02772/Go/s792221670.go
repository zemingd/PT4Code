package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
        "strings"
)

func main() {
        var n int
        fmt.Scan(&n)
        sc := bufio.NewScanner(os.Stdin)
        var s string
        if sc.Scan() {
                s = sc.Text()
        }
        var count int
        for _, v := range strings.Split(s, " ") {
                t, _ := strconv.Atoi(v)
                if t%2 == 0 {
                        if t%3 == 0 || t%5 == 0 {
                                count++
                        } else {
                                fmt.Println("DENIED")
                                return
                        }
                }
        }
        if count != 0 {
                fmt.Println("APPROVED")
        } else {
                fmt.Println("DENIED")
        }
}
