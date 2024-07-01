package main
import (
    "fmt"
    "sort"
    )
func main(){
    var n, m int
    fmt.Scan(&n, &m)
    card := make([]int, n)
    for i:=0;i<n;i++{
        fmt.Scan(&card[i])
    }
    for i, b, c:=0, 0, 0;i<m;i++{
        fmt.Scan(&b, &c)
        sort.Ints(card)
        for j:=0;j<b;j++{
            if card[j] > c{
                break
            }
            card[j] = c
        }
    }
    ans := 0
    for _, val := range card{
        ans += val
    }
    fmt.Println(ans)
}
