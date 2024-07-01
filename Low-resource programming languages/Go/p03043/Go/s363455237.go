package main
import (
    "fmt"
    "math"
)
func main(){
    var N,K,ans float64
    fmt.Scan(&N, &K)
    for i:=1.0;i<=N;i++{
        for j, k:=0.0, i;;j, k = j+1, k*2{
            if k>=K{
                ans +=  math.Pow(0.5, j) / N
                break
            }
        }
    }
    fmt.Println(ans)
}
