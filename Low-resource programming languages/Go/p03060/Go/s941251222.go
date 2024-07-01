package main
import "fmt"
func main(){
    var N int
    var V, C [20]int
    fmt.Scan(&N)
    for i:=0;i<N;i++{
        fmt.Scan(&V[i])
    }
    for i:=0;i<N;i++{
        fmt.Scan(&C[i])
        V[i] -= C[i]
    }
    ans := 0
    for i:=0;i<N;i++{
        if V[i] >0{
            ans += V[i]
        }
    }
    fmt.Println(ans)
    
}
