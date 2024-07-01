package main

import (
	"fmt"
)

func main() {
	var a,b,c,x int
	fmt.Scan(&a,&b,&c,&x)
	count := 0
	for i := 0; i < a + 1; i++ {
		for j := 0; j < b + 1; j++ {
			for k := 0; k < c + 1; k++ {
				if x == 500*i + 100*j + 50*k {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}