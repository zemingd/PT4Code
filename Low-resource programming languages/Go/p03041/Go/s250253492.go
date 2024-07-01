package main
import "fmt"
func main(){
    var N,K int
    var s string
    fmt.Scan(&N,&K,&s)
    ans := []byte(s)
    ans[K-1] += 32
    fmt.Println(string(ans))   
}
