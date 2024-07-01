package main
import (
    "fmt"
    "sort"
    )
func main(){
    var n, m, ans int
    fmt.Scan(&n, &m)
    card := make([]int, n)
    for i:=0;i<n;i++{
        fmt.Scan(&card[i])
        ans += card[i]
    }
    for i, b, c, change:=0, 0, 0, 1;i<m;i++ {
        if change > 0{
            sort.Ints(card)
        }
        fmt.Scan(&b, &c)
        change = 0
        for j:=0;j<b && card[j] < c;j, change =j+1, 1{
            ans += c - card[j]
            card[j] = c
        }
    }
    fmt.Println(ans)
}
