package main
import (
	"fmt"
)


func main(){
    // Your code here!
    var n, now, nxt int
    fmt.Scan(&n, &now)
    
    for i:=1;i<n;i++ {
        fmt.Scan(&nxt)
        if now <= (nxt-1) {
            nxt--
        }
        if now > nxt {
            fmt.Println("No")
            return
        }
        now = nxt
    }
    fmt.Println("Yes")
}
