package main
import "fmt"
 
func main() {
  var n, a int
  maxVal := 0
  secondVal := 0
  maxIdx := 0
  
  fmt.Scan(&n)
  
  for i := 0; i < n; i++ {
    fmt.Scan(&a)
    if(a >= maxVal) {
      secondVal = maxVal
      maxVal = a
      maxIdx = i
    }
  }
  
  for i := 0; i < n; i++ {
    if(i == maxIdx) {
      fmt.Printf("%d\n", secondVal)
    } else {
      fmt.Printf("%d\n", maxVal)
    }
  }
}