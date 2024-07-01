package main

import (
	"fmt"
	"os"
)

func IsOk(i int) bool {
	// 7 5 3
	seen := [10]bool{}

	for i > 0 {
		if i%10 != 3 && i%10 != 5 && i%10 != 7 {
			return false
		}
		seen[i%10] = true
		i /= 10
	}

	return seen[3] && seen[5] && seen[7]
}

func main() {
	r := os.Stdin
	var N int
	fmt.Fscan(r, &N)

	ct := 0
	for i := 1; i <= N; i++ {
		if IsOk(i) {
			ct++
		}
	}

	fmt.Println(ct)

}
