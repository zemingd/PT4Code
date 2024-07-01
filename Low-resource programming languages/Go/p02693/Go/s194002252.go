package main
import (
	"fmt"
)

func main(){
	var k,a,b int8
	// var c string
	fmt.Scan(&k)
	fmt.Scan(&a)
	fmt.Scan(&b)

	l := a/k
	
	if l*k == a{
		fmt.Println("OK")
	} else if l*k + k <= b {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}

}