package main
import (
    "fmt"
    )
func main(){
    var n,x int
    
    fmt.Scan(&n,&x)
    
    l := make([]int,n)
    
    for i := 0; i < n; i++ {
        var a int
        fmt.Scan(&a)
        
        l[i] = a
    }
    
    dp := make([]int, n+2)
    
    dp[1] = l[0]
    
    cnt := 0
    
    for i := 2; i <= n; i++ {
        dp[i] = dp[i - 1] + l[i - 1]
    }
    
    for i := 0; i <= n; i++ {
        if dp[i] <= x {
            cnt++
        }
    }
    
    fmt.Println(cnt)
    
}
