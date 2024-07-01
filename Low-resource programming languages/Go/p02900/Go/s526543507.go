package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	N, L := highandlow(A, B)
	yakusu := yakusu(L)
	count := 0
	for _, y := range yakusu {
		if N%y == 0 {
			count++
		}
	}
	fmt.Println(count)
}

func highandlow(x, y int) (h, l int) {
	if x > y {
		return x, y
	}
	return y, x
}

func yakusu(n int) []int {
	var yakusu []int
	for i := 1; i <= n; i++ {
		if n%i == 0 && isPrime(i) {
			yakusu = append(yakusu, i)
		}
	}
	return yakusu
}

func isPrime(x int) bool {
	if x == 1 {
		return true
	}
	if x == 2 {
		return true
	}
	if x%2 == 0 {
		return false
	}

	b := true
	rootx := int(math.Sqrt(float64(x)))
	i := 3
	for i <= rootx {
		if x%i == 0 {
			b = false
			break
		}
		i += 2
	}
	return b
}
