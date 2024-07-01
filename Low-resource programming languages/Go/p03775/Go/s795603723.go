package main

import "fmt"

func countDigits(n int) int {
	digits := 0

	for n > 0 {
		n /= 10
		digits++
	}

	return digits
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var N int
	fmt.Scan(&N)

	ans := countDigits(N)

	for a := 1; a * a <= N; a++ {
		if N % a != 0 {
			continue
		}

		b := N / a

		cur := max(countDigits(a), countDigits(b))

		if ans > cur {
			ans = cur
		}
	}

	fmt.Println(ans)
}

