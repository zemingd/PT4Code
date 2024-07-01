package main

import "fmt"

func main() {
        var H, A, ans int
        fmt.Scanf("%d %d", &H, &A)
        ans = H / A
        if H%A > 0 {
                ans = ans + 1
        }
        fmt.Printf("%d\n", ans)
}
