package main

import (
	"fmt"
)

func main() {
	var a, b, k uint32
	fmt.Scan(&a,&b,&k)
	
	for k != 0 {
		if a != 0 {
			a--
		} else if b !=0 {
			b--
		}
		k--
	}
	fmt.Printf("%d %d",a,b)
}