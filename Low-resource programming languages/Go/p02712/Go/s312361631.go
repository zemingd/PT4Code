package main
import "fmt"
func main(){
    // Your code here!
    var n int64
    fmt.Scan(&n)
    
    var sum int64
    sum = 0
    var i int64
    for i = 1; i <= n; i++{
        if !((i % 3 == 0) || (i % 5 == 0)){
            sum = i + sum
        }
    }
    fmt.Println(sum)
}
