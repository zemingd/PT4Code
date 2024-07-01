package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	if n%2 == 0 {
		fmt.Println(-1)
		return
	}
	if n%5 == 0 {
		fmt.Println(-1)
		return
	}
	i := 1
	c := 1
	for {
		if i*7 < n {
			i = i*10 + 1
			c++
			continue
		}

		if i*7%n == 0 {
			fmt.Println(c)
			return
		}
		i = i*10 + 1
		c++
	}

}

func getyaku(n int) []int {
	var yaku []int
	for i := 2; i < sqrt(n); i++ {
		if n%i == 0 {
			yaku = append(yaku, i)
			yaku = append(yaku, n/i)
		}
	}
	return yaku
}

func sqrt(p int) int {
	return int(math.Sqrt(float64(p)))
}

func contain(h []int, n int) bool {
	for _, v := range h {
		if n == v {
			return true
		}
	}
	return false
}
