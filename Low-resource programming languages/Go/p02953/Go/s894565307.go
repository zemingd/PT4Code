package main

import (
	"fmt"
	"log"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	for i := 0; i < n-1; i++ {
		if h[i] >= h[i+1] {
			if i > 0 && h[i] == h[i-1] {
				continue
			}
			h[i]--
		}
	}
	for i := 0; i < n-1; i++ {
		if h[i] > h[i+1] {
			fmt.Println("No")
			return
		}
	}
	log.Println(h)
	fmt.Println("Yes")
}

var dy = []int{0, 1, 0, -1}
var dx = []int{1, 0, -1, 0}
var inf = int(1e9)

func pow(a, b int) int {
	return int(math.Pow(float64(a), float64(b)))
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}
func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
}
func max(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r < a[i] {
			r = a[i]
		}
	}
	return r
}
func min(a ...int) int {
	r := a[0]
	for i := 0; i < len(a); i++ {
		if r > a[i] {
			r = a[i]
		}
	}
	return r
}
func sum(a []int) (r int) {
	for i := range a {
		r += a[i]
	}
	return r
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

type pair struct {
	a, b int
}

type pairs []pair

func (p pairs) Len() int {
	return len(p)
}
func (p pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p pairs) Less(i, j int) bool {
	if p[i].a == p[j].a {
		return p[i].b < p[j].b
	}
	return p[i].a < p[j].a
}
