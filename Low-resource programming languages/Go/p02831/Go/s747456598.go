package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	answer := minSnack(a, b)
	fmt.Println(answer)
}

func minSnack(a, b int) int {
	if a == 1 {
		return b
	} else if b == 1 {
		return a
	}
	aDivisors := findDivisors(a)
	bDivisors := findDivisors(b)
	var divisors []int
	finA := false
	finB := false

	for a, b := 0, 0; ; {
		if !finA && !finB && aDivisors[a] == bDivisors[b] {
			divisors = append(divisors, aDivisors[a])
			a++
			b++
		} else if finB || !finA && aDivisors[a] <= bDivisors[b] {
			divisors = append(divisors, aDivisors[a])
			a++
		} else if finA || !finB && aDivisors[a] >= bDivisors[b] {
			divisors = append(divisors, bDivisors[b])
			b++
		}
		if len(aDivisors) <= a {
			finA = true
		}
		if len(bDivisors) <= b {
			finB = true
		}
		if finA && finB {
			break
		}
	}
	minS := 1
	for _, v := range divisors {
		minS *= v
	}
	return minS
}

func findDivisors(x int) []int {
	var divisors []int
	for i := 2; i <= x; i++ {
		if x%i == 0 {
			x /= i
			divisors = append(divisors, i)
			i--
		}
	}
	return divisors
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
