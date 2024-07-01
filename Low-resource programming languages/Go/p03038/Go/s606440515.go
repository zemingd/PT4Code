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
    sort.Ints(card)
    for i, j, b, c, change:=0, 0, 0, 0, 0;i<m;i++ {
        if change > 0{
            asc(card, b)
        }
        fmt.Scan(&b, &c)
        for j, change =0, 0;j<b && card[j] < c;j, change =j+1, 1{
            ans += c - card[j]
            card[j] = c
        }
    }
    fmt.Println(ans)
}

func asc (card []int, b int){
    for i, n :=0, len(card)-1;i<n;i++{
        for j:=n;i<j;j,n=j-1,n-1{
            if card[i] > card[j]{
                card[i], card[j] = swap(card[i], card[j])
                break
            }
        }
    }
}

func swap(a int, b int) (int, int) {
    return b, a
}
