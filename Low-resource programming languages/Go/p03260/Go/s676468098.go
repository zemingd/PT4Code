package main
import "fmt"
var a,b int
func main() {
    fmt.Scanf("%d %d", &a, &b)
    if ( a % 2 == 0 || b % 2 == 0 ) {
        fmt.Printf("No")
    } else {
        fmt.Printf("Yes" )
    }
}
