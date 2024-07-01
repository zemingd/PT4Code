package main
import "fmt"
func main(){
    var a int
    var b int
    fmt.Scan(&a);
    fmt.Scan(&b);
    if b >= a {
        fmt.Println("unsafe");
        
    }else {
        fmt.Println("safe");
    }
}
