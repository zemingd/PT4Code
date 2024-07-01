package main
import "fmt"
func main(){
    // Your code here!
    var a int
    var b int
    var c int
    fmt.Scanf("%v%v%v", &a, &b, &c)
    if a < b && b < c {
        fmt.Println("Yes")
    }else {
        fmt.Println("No")
    }
}
