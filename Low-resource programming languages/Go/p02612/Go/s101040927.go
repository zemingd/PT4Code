package main
 
import "fmt"
 
func main() {
    var n int
    fmt.Scan(&n)
 
  if (n % 1000) == 0 {
        fmt.Println("0")
        return
    } else {
    m := n / 1000
    o := (m+1) * 1000 - n
	    fmt.Println(o)
	    return
    }
}