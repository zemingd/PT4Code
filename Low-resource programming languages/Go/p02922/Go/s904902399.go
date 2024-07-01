package main
 
import (
    "fmt"
)
 
func main() {
	var A,B int
  	fmt.Scan(&A)
  	fmt.Scan(&B)
  	if B==1{
      	fmt.Print(0)
  	}else if B%A!=0{
      	fmt.Print(B/A +1)
  	}else{
      	fmt.Print((B-A)/(A-1) +1)
  	}
}