package main
import "fmt"

func main() {
  var n int
  fmt.Scan(&n)
  
  b := false
  for a:=1; a<10; a++ {
    if n % a == 0 {
      n = n / a
    	for i:=1; i<10; i++ {
          if n == i {
        		b = true
     	 }
   	 }
  	}
  }
  switch b{
    case true:
    fmt.Println("Yes")
    default:
    fmt.Println("No")
  }
}

