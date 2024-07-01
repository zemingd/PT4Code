package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var x int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &x)

	for i := x; i < 100003; i++ {
		if isPrime(i) {
			fmt.Println(i)
			return
		}
	}
}

func isPrime(x int) bool {
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
