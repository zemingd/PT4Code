package main
import "fmt"
func main(){
    // Your code here!
    var a,b,c,ans int
    fmt.Scan(&a)
    fmt.Scan(&b)
    fmt.Scan(&c)
    ans = c - (a-b)

    if ans < 0 {
        ans = 0
    }
    fmt.Println(ans)
}
