package main
import (
    "fmt"
    "math"
)
func main(){
    var time, now [6]float64
    n := 0.0
    fmt.Scan(&n)
    now[0] = n
    for i:=0; i<5; i++{
        fmt.Scan(&time[i])
    } 
    ans := 0.0
    for ; now[5] != n ; ans++{
        for j:=4; j>=0; j--{
            move := math.Min(time[j], now[j])
            now[j+1] += move
            now[j] -= move
        }
    }
    fmt.Println(ans)
    
}
