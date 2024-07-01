package main

import "fmt"

func main() {
	var K, S int
	fmt.Scan(&K, &S)

	ans := 0
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			z := K - x - y
			if 0 <= z && z <= K {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
