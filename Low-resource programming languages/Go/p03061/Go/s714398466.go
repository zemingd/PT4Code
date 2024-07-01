package main

import (
	"fmt"
	"math/rand"
	"time"
)

const MAX = 1000000000 + 9

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func max_gcd(a []int) int {
	ret := 1
	for i := 0; i < len(a); i++ {
		g := 0
		for j := 0; j < len(a); j++ {
			if i == j {
				continue
			}
			if g == 0 {
				g = a[j]
			} else {
				g = gcd(g, a[j])
			}
		}
		if g > ret {
			ret = g
		}
	}
	return ret
}

func max(a []int) int {
	ret := a[0]
	for i := 1; i < len(a); i++ {
		if a[i] > ret {
			ret = a[i]
		}
	}
	return ret
}

func main() {
	var n int
	fmt.Scanln(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	if n == 2 {
		fmt.Println(max(a))
		return
	}

	if n < 1000 {
		fmt.Println(max_gcd(a))
		return
	}

	rand.Seed(time.Now().UnixNano())
	dict := make(map[int]int)
	for i := 0; i < 5000000; i++ {
		x, y := rand.Intn(n), rand.Intn(n)
		g := gcd(a[x], a[y])
		dict[g]++
	}
	ans, max := 0, 0
	for k, v := range dict {
		if v > max {
			ans = k
			max = v
		}
	}
	fmt.Println(ans)
}
