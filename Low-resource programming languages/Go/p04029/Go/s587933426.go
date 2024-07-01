package main
 
import "fmt"
 
func main(){
  var N uint
  var n int = 1
  var sum uint = 0
  fmt.scan(&N)
  for n < N {
    sum = sum + n
    n = n + 1
  }
  fmt.Println(sum)
}