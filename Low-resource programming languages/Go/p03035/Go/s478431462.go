package main
import(
    "fmt"
)
func main(){
    var a, b  int
    fmt.Scan(&a,&b)
    if a >= 13 {
        fmt.Println(a)
    } else if  6<= a && a <= 12{
        fmt.Println(a/2)
    } else {
        fmt.Println(0)
    }
}