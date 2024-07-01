package main
 
import "fmt"
 
func main() {
	var a, b, x uint64
	fmt.Scan(&a, &b, &x)
 	
  res := (b - a)/x
  if a  == 0 {
    fmt.Println(b/x + 1)
    return
  }
  
  fmt.Println(b/x - a/x)}



