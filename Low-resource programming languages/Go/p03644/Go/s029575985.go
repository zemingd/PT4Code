package main

import "fmt"

func main() {
        var N int
        fmt.Scan(&N)

        max := 0
        ans := 0
        for n := N; n > 0; n-- {
                count := 0
                for i := n; i > 0; i /= 2 {
                        if i%2 != 0 {
                                break
                        }
                        count++
                }
                if max < count {
                        max = count
                        ans = n
                }
        }
        fmt.Println(ans)
}