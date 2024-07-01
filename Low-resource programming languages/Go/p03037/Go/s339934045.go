package main
import (
    "fmt"
    "math"
    )
func main(){
    var n, m int
    fmt.Scan(&n, &m)
    min, max := 1.0, float64(n)
    for i,l,r:=0,0.0,0.0;i<m;i++{
        fmt.Scan(&l, &r)
        max = math.Min(max, r)
        min = math.Max(min, l)
    }
    if max - min + 1 < 0{
        fmt.Println(0)
    }else{
        fmt.Println(max - min +1)
    }
    
}
