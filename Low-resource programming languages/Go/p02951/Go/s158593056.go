package main
import (
    "fmt"
    "os"
    )
func main(){
    // Your code here!
    var a, b, c int
    fmt.Scanf("%d %d %d", &a,  &b, &c)
    if a - b >= c {
        fmt.Println(0)
        os.Exit(0)
    }
     fmt.Println(c + b - a)
}
