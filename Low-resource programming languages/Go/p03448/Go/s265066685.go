package main
 
import "fmt"
 
func main() {
  var a, b, c, x int
  fmt.Scan(&a, &b, &c, &x)
  
  var count int
  count = 0
  for i := 0; i <= a; i++ {
    for j := 0; j <= b; j++ {
      for k := 0; k <=c; k++ {
        if x == 500 * a + 100 * b + 50 * c {
        	count++
        }
      }
    }
  }
  fmt.Println(count)
}