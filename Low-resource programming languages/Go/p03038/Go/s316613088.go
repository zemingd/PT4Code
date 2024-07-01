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
            asc(card, change)
        }
        fmt.Scan(&b, &c)
        for j, change =0, 0;j<b && card[j] < c;j, change =j+1, change+1{
            ans += c - card[j]
            card[j] = c
        }
    }
    fmt.Println(ans)
}

func asc (card []int, b int){
    for i, j:=b-1,len(card)-1;0<=i &&i<j;j--{
        if card[i] > card[j]{
            card[i], card[j] = swap(card[i], card[j])
            if i!=0{
                i--
            }
        }
    }
}

func swap(a int, b int) (int, int) {
    return b, a
}
