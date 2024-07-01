// Try AtCoder
// author: Leonardone @ NEETSDKASU
package main

import "fmt"

func main() {
    var n int
    fmt.Scan(&n)
    a := make([]int, n + 1)
    for i := range a[1:] {
        fmt.Scan(&a[i+1])
    }
    ans := 0
    p := 1
    for {
        ans++
        t := a[p]
        if t == 0 {
            ans = -1
            break
        }
        if t == 2 {
            break
        }
        a[p] = 0
        p = t
    }
    fmt.Println(ans)
}