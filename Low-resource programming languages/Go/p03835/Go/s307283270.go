package main

import "fmt"

func main() {
	var K, S int
	fmt.Scanf("%d %d", &K, &S)

	cnt := 0
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			for z := 0; z <= K; z++ {
				if x+y+x == S {
					cnt++
				}
			}
		}
	}

	fmt.Println(cnt)
}