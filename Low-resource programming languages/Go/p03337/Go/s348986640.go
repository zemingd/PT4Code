package main
import "fmt"
func main() {
  var a, b, ans int
  ans = -10000
  fmt.Scan(&a, &b)
  if ans < (a + b){
    ans = a + b 
  }
  if ans < (a - b){
    ans = a - b
  }
  if ans < (a * b){
    ans = a * b
  }
  fmt.Println(ans)
}
    
  