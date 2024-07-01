package main
import "fmt"
func main(){
    var N, ans int
    
    fmt.Scanf("%d", &N)
    for i := 1; i <= N; i++ {
        ans += i
    }
    
    fmt.Println(ans)
}
