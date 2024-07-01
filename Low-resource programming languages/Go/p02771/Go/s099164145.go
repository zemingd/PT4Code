package main
import "fmt"
func main(){
    // Your code here!
    var x, y, z int
    fmt.Scan(&x, &y, &z)
    if x == y || x == z || y == z{
        if x == y && x == z && y ==z {
            fmt.Println("No")
            return 
        }
        fmt.Println("Yes")
        return
    }
     fmt.Println("No")
}