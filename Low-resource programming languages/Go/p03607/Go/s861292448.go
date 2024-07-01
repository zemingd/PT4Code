package main

import "fmt"

func main() {
        var n, a int
        fmt.Scan(&n)

        p := map[int]int{}
        for i := 0; i < n; i++ {
                fmt.Scan(&a)

                _, ok := p[a]
                if ok {
                        delete(p, a)
                } else {
                        p[a] = a
                }
        }

        fmt.Printf("%d\n", len(p))
}
