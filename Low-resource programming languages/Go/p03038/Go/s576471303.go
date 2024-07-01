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
    for i, b, c, change:=0, 0, 0, 1;i<m;i++ {
        if change > 0{
            sort.Ints(card)
        }
        fmt.Scan(&b, &c)
        change = 0
        for j:=0;j<b;j, change =j+1, 1{
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
