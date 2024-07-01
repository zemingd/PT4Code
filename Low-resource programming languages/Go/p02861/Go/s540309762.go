package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	log.SetFlags(log.Lshortfile)
	N := nextInt()
	x := make([]int, N)
	y := make([]int, N)
	for i := 0; i < N; i++ {
		x[i] = nextInt()
		y[i] = nextInt()
	}
	var sum float64
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			_x := (x[i] - x[j]) * (x[i] - x[j])
			_y := (y[i] - y[j]) * (y[i] - y[j])
			sum += math.Sqrt(float64(_x+_y)) * float64(N-1)
		}
	}
	n := float64(factorial(N))
	fmt.Println(float64(sum) / n)
}

func factorial(n int) int {
	var x int
	if n > 0 {
		x = n * factorial(n-1)
	} else {
		x = 1
	}
	return x
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		log.Fatal(err)
	}
	return i
}

var dy = []int{0, 1, 0, -1}
var dx = []int{1, 0, -1, 0}
var inf = math.MaxInt32

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
