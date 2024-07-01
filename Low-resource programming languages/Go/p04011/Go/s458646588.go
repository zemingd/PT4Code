package main
import "fmt"
func main(){
    var N, K, X, Y, ans int
    
    fmt.Scanf("%d", &N)
    fmt.Scanf("%d", &K)
    fmt.Scanf("%d", &X)
    fmt.Scanf("%d", &Y)
    for i := 0; i < min(K, N); i++ {
        ans += X
    }
    for i := min(K, N); i < N; i++ {
        ans += Y
    }
    
    fmt.Println(ans)
}

func min(n ...int) int {
    cnt := len(n)
    ret := n[0]
    for i := 1; i < cnt; i++ {
        if ret > n[i] {
            ret = n[i]
        }
    }
    return ret
}