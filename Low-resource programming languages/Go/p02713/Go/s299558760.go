package main

import (
	"fmt"
)

func GCD(a, b int) int {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}
func main() {
	var N int
	fmt.Scanf("%d\n", &N)

	sum := 0
	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			for k := 1; k <= N; k++ {
				sum += GCD(GCD(i, j), k)
			}
		}
	}
	fmt.Println(sum)

}
