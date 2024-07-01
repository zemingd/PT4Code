package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ans := 0
	for i := 1; i <= N; i += 2 {
		cnt := 0
		for j := 1; j <= N; j += 2 {
			if i%j == 0 {
				cnt++
			}
		}
		if cnt == 8 {
			ans++
		}
	}

	fmt.Println(ans)
}