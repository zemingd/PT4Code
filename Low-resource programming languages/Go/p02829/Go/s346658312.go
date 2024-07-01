package main

import (
	"fmt"
)

func main() {
	var A,B,ans int
	fmt.Scan(&A,&B)
	
	switch A+B {
		case 3:
			ans = 3
		case 4:
			ans = 2
		case 5:
			ans = 1
	}
	fmt.Println(ans)
}