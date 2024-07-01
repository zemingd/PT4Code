package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ans := 0
	for i := 1; i <= N; i += 2 {
		tmp := 0
		for j := 1; j <= i; j++ {
			if N%j == 0 {
				tmp++
			}
		}
		if tmp == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}
