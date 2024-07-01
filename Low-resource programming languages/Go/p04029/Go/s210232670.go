package main
 
import "fmt"
 
func main(){
  var N int
  var n int = 1
  var sum int = 0
  fmt.Scan(&N)
  for n <= N {
    sum = sum + n
    n = n + 1
  }
  fmt.Println(sum)
}
