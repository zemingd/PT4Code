package main

import (
	"fmt"
)

func main() {
	var A,B,X int
	fmt.Scan(&A,&B,&X)
	
	ans := "NO"
	if A <= X && X <= (A + B) {
		ans = "YES"
	}
	
	fmt.Println(ans)
}