package main
import "fmt" 
import "strings"
import "strconv"

func main() {
  
  var s string
  var count int
  
  fmt.Scanf("%s", &s)
  count = strings.Count(s, "1")
  
  fmt.Println(strconv.Itoa(count))
}