package main

import "fmt"

func max(a, b int) int {
        if a > b {
                return a
        }
        return b
}
func main() {
        var a, b, ans int
        fmt.Scan(&a, &b)
        //m := max(a,b)
        for i := 2; ; i++ {
                r := b * i
                if r%a == 0 {
                        ans = r
                        break
                }
        }
        fmt.Println(ans)
}