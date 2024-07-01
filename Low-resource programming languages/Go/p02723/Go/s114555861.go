package main
import "fmt"
func main(){
    // Your code here!
    var n string
    fmt.Scan(&n)
    if n[2] == n[3] || n[4] == n[5]{
        fmt.Println("Yes")
    }else {
        fmt.Println("No")
    }
}