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
	for i := 0; i < len(l); i++ {
		a := l[i]
		for j := i + 1; j < len(l); j++ {
			if a == l[j] {
				fmt.Println("NO")
				return
			}
		}
	}
	fmt.Println("YES")
}