package main
import "fmt"
func main(){
    // Your code here!
    var a, b int
    fmt.Scan(&a, &b)
    if b % a == 0 {
        fmt.Printf("%d\n", a + b)
    } else {
        fmt.Printf("%d\n", b - a)
    }
}
