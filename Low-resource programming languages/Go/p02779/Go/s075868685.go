package main

import (
	"fmt"
)

func main(){
	var n int
	var t int
	fmt.Scan(&n)
	l := make(map[int]bool)
	for i := 0; i < n; i++ {
		fmt.Scan(&t)
		if !l[t] {
			l[t] = true
		} else {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}