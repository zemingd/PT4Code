package main
 
import{
	"fmt"
}
 
A := 4
B := 12
func main(){
  var result int
  if B % A = 0 {
      result = A + B
  } else{
      result = B - A
  }
 
  fmt.Println(result)
}