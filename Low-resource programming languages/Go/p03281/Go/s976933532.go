package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	ans := 0
	for i := 1; i <= N; i += 2 {
		c := 0
		for j := 1; j <= N; j++ {
			if i%j == 0 {
				c++
			}
		}
		if c == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}
