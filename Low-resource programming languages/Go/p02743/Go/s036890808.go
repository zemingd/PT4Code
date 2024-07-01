package main
import(
    "fmt"
    "math"
)
func main(){
    // Your code here!
    var a,b,c float64;
    fmt.Scan(&a,&b,&c)
    if 9*a*b< math.Pow(c,2){
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}
