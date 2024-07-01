package main
 
import "fmt"
 
func main() {
  var n int
  fmt.Scan(&n)
  i := 0
  for true {
    i+= 1
    if 1000 * i >= n {
      ans := 1000 * i - n
      fmt.Println(ans)
      break
    }
  }