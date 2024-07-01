package main
 
import "fmt"
 
func main() {
  var D, T, S int
  fmt.Scanf("%d %d %d", &D, &T, &S)
  
  if D - T * S < 0 {
    fmt.Println("No")
  }else{
    fmt.Println("Yes")
  }
}