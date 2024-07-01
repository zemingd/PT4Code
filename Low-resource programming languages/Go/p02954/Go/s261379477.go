package main

import (
	"fmt"
	"math"
)

func main() {
	var S string
	fmt.Scan(&S)
	c := make([]int, len(S))
	for i := 0; i < len(S)-1; i++ {
		if S[i] == 'R' && S[i+1] == 'L' {
			c[i] = 1
			c[i+1] = 1
			a := i
			b := i + 1
			a--
			b++
			d := 1
			for a >= 0 && S[a] == 'R' {
				if d%2 == 1 {
					c[i+1]++
				} else {
					c[i]++
				}
				a--
				d++
			}
			d = 1
			for b < len(S) && S[b] == 'L' {
				if d%2 == 1 {
					c[i]++
				} else {
					c[i+1]++
				}
				b++
				d++
			}
		}
	}
	for i := 0; i < len(c); i++ {
		fmt.Print(c[i])
		if i < len(c)-1 {
			fmt.Print(" ")
		} else {
			fmt.Println("")
		}
	}
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
