package main
 
import(
	"fmt"
	"regexp"
)
 
 
func main(){
var a string
fmt.Scan(&a)
if regexp.MustCompile(`[A-Z]`).Match([]byte(a)) {
  fmt.Println("A")
}
if regexp.MustCompile(`[a-z]`).Match([]byte(a)) {
  fmt.Println("a")
}
}