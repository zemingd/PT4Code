package main

import (
	"fmt"
	"math"
)

func getAnswer(a, b int) int {
	A := getDigit(a)
	B := getDigit(b)
	if A > B {
		return A
	} else {
		return B
	}
}

func getDigit(num int) int {
	i := 1
	for {
		if num < 9 {
			break
		}
		num = num / 10
		i += 1
	}
	return i
}

var N int

func main() {
	fmt.Scan(&N)
	hoge := int(math.Sqrt(float64(N)))
	for i := hoge; i > 0; i-- {
		if N%i == 0 {
			fmt.Println(getAnswer(hoge, N/hoge))
			break
		}
	}
}