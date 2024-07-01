package main
import "fmt"
func main(){
    var n,k int
	fmt.Scanf(&n,&k)
    
    if n * 500 >= k {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}
