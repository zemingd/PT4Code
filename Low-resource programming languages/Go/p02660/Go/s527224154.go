package main

import (
	"fmt"
	"math"
)

func main() {
	var n, count int
	fmt.Scan(&n)
	if n == 1 {
		fmt.Println(0)
		return
	}
	if n == 2 {
		fmt.Println(1)
		return
	}
	if n == 3 {
		fmt.Println(1)
		return
	}

	if isPrime2(n) {
		fmt.Println(1)
      return
	}

	//rootn := int(math.Sqrt(float64(n)))
	i := 2
	for i <= n || i < 1000000 {
		if n%i == 0 {
			n /= i
			count++
		}
		i++
	}
	if count == 0 {
		fmt.Println(1)
	} else {
		fmt.Println(count)
	}
}

func isPrime2(x int) bool {
	if x == 1 {
		return false
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
