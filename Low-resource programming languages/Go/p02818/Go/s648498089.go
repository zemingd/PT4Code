package main
import "fmt"
func main(){
    // Your code here!
    var a,b,k int
    fmt.Scan(&a, &b, &k)
    
    x := min(a,k)
    a -= x
    k -= x
    
    x = min(b,k)
    b -= x
    
    fmt.Println(a,b)
}

func min(a,b int) int {
    if a > b {
        return b
    }
    return a
}