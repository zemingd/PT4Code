package main
import "fmt"
func main(){
    var n, l int
    fmt.Scan(&n, &l)
    sum := l * n + n * (n - 1) / 2
    if l <= 0 && (n + l - 1) >= 0 {
        fmt.Println(sum)
    }else if l > 0 {
        fmt.Println(sum - l)
    }else{
        fmt.Println(sum - (n + l - 1))
    }
}
