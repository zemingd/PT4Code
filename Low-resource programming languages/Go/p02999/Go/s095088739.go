package main

import (
	"fmt"
)


func main() {
	var x, a int
	fmt.Scan(&x,&a)
	
	ans := 0
	if x>= a{
		ans =10
	}else{
		ans =0
	}
	fmt.Println(ans)
}