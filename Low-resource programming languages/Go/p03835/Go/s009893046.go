package main

import "fmt"

func main() {
	var K, S, r int
	fmt.Scan(&K, &S)
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			for z := 0; z <= K; z++ {
				if x+y+z == S {
					r++
				}
			}
		}
	}
	fmt.Println(r)
}