package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	fmt.Println(Calc(n))
}

func Calc(n int) int {
	var sum = 0
	for i := 1; i <= n; i++ {
		for j := 1; j <= n; j++ {
			for k := 1; k <= n; k++ {
				sum += gcd(i, j, k)
			}
		}
	}
	return sum
}

func gcd(n ...int) int {
	var answer = n[0]
	for i := 1; i < len(n); i++ {
		answer = f(answer, n[i])
	}
	return answer
}

func f(a, b int) int {
	if b == 0 {
		return a
	}
	return f(b, a%b)
}
