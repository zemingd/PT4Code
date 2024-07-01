package main

import "fmt"

func main() {
	var K, S int
	fmt.Scan(&K, &S)
	ans := 0
	for X := 0; X <= K; X++ {
		for Y := 0; Y <= K; Y++ {
			Z := S - X - Y
			if 0 <= Z && Z <= K && X+Y+Z == S {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
