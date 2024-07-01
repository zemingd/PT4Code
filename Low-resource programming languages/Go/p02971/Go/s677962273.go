package main
import "fmt"
 
func main() {
  isDup  := false
  var n, a int
  maxVal := 0
  secondVal := 0
  maxIdx := 0
  
  fmt.Scanln(&n)
  
  for i := 0; i < n; i++ {
    fmt.Scanln(&a)
    if(a > maxVal) {
      secondVal = maxVal
      maxVal = a
      maxIdx = i
      isDup = false
    }
    if(a == maxVal) {
      isDup = true
    }
  }
  
  for i := 0; i < n; i++ {
    if(i == maxIdx && !isDup) {
      fmt.Printf("%d\n", secondVal)
    } else {
      fmt.Printf("%d\n", maxVal)
    }
  }
}