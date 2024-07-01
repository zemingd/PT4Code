package main

import(
	"fmt"
)

func main(){
	var x, a int
	fmt.Scan(&x, &a)
	if x >= a {
		fmt.Print(10)
	}else{
		fmt.Print(0)
	}
}