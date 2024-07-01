package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)

	ans := 1000 - (N % 1000)
	if ans == 1000 {
		ans = 0
	}
	fmt.Println(ans)
}