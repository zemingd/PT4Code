package main

import (
	"fmt"
)

func main(){
	var n int
	fmt.Scan(&n)
	l := make([]int, n)
	for i, _ := range(l) {
		fmt.Scan(&l[i])
	}
	a := l[0]
	for _, u := range(l) {
		if a == u {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}