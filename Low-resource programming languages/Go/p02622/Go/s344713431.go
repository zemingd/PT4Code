package main
import (
	"fmt"
)
func main() {
    
    var s1, s2 string
    fmt.Scan(&s1, &s2)
  
    var cnt int
    for i := 0; i < len(s1); i++ {
        if s1[i] != s2[i] {
            cnt++    
        }
    }
    
    fmt.Println(cnt)
}