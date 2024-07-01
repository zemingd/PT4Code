package main
 
import (
  "fmt"
)
 
func main() {
  var b string
  ans := map[string]string{"A": "T", "C": "G", "G": "C", "T": "A"}
  fmt.Scanf("%s", &b)
  
  fmt.Printf("%s\n", ans[b])
}