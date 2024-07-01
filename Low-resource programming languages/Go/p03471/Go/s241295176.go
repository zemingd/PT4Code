package main

import (
	"fmt"
)

func main() {
	var N, Y int
	var exist bool
	var kumi = make(map[string]int)

	fmt.Scan(&N)
	fmt.Scan(&Y)
	
	for a := 0; a <= N; a++ {
		for b := 0; b <= N-a; b++ {
			for c := 0; c <= N-a-b; c++ {
				if a * 10000 + b * 5000 + c * 1000 == Y {
					exist = true
					kumi["a"] = a
					kumi["b"] = b
					kumi["c"] = c
				}
			}
		}
	}

	if ! exist {
		kumi["a"] = -1
		kumi["b"] = -1
		kumi["c"] = -1
	}

	fmt.Printf("%d %d %d", kumi["a"], kumi["b"], kumi["c"])
}