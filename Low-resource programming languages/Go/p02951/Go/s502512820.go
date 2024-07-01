package main
import "fmt"
func main(){
    var A, B, C int

    fmt.Scanf("%d %d %d", &A, &B, &C)
    
    ans:= C - (A - B)

    if ans < 0 {
        ans = 0
    }
    
    fmt.Println(ans)
}
