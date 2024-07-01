package main
import "fmt"
func main(){
    var n, c, total, minus int
    fmt.Scan(&n)
    v := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&v[i])
    }
    for i := 0; i < n; i++ {
        fmt.Scan(&c)
        minus = v[i] - c
        if total < total + minus {
            total += minus
        } else {
            continue
        }
    }
    fmt.Println(total)
}
