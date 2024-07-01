package main
 
import (
	"fmt"
	"strings"
)
 
func main() {
	var s string
	fmt.Scan(&s)
  	
  	head := strings.Index(s, "A")
  	end  := strings.LastIndex(s, "Z")
  
  	ans := end - head + 1
	fmt.Printf("%d\n", ans)
}