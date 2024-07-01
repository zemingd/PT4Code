package main

import (
	"fmt"
)

func main() {
	var n int
	var flg bool
	fmt.Scan(&n)
	
	flg = false
	for i := 1; i < 10; i++ {
		for j:= 1; j < 10; j++ {
			if i * j == n {
				flg = true
			}
		}
	}
	
	if flg {
		fmt.Printf("%s","Yes")
	} else {
		fmt.Printf("%s","No")
	}
}