package main
 
import (
  "fmt"
  "strings"
)
 
func main() {
  var S string
  fmt.Scanf("%s", &S)
  
  var cnt uint
  var before, str string
  
  for _, s := range strings.Split(S, "") {
    str = str + s
    
    if before != str {
      before = str
      cnt++
      str = ""
    }
    
  }
  
  fmt.Println(cnt)
}