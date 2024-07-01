package main
import(
    "fmt"
    "math"
)
func main(){
    var A,B float64
    fmt.Scan(&A, &B)
    fmt.Println(math.Max(A*2-1, math.Max(B*2-1, A+B)))
}