package main
import (
        "fmt"
        "sort"
)

func main() {
        var n, k, ans int
        ans = 1<<29
        fmt.Scan(&n)
        fmt.Scan(&k)
        d := make([]int, n)
        for i:=0; i < n; i++ {
                fmt.Scan(&d[i])
                //fmt.Printf("%d %d\n", i, d[i])
        }
        sort.Ints(d)
        for i:=0; i+k-1 < n; i++ {
                var w = d[i+k-1] - d[i]
                if  ans > w {
                        ans = w
                }
                //fmt.Printf("%d\n", w)
        }
        fmt.Printf("%d\n",ans)
}
