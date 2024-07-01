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
	X := nextInt()
	Y := nextInt()
	var a, b int
	x := X
	y := Y
	for x > 0 && y > 0 {
		if x < y {
			x -= 1
			y -= 2
			a++
		} else {
			x -= 2
			y -= 1
			b++
		}
	}
	if !(x == 0 && y == 0) {
		fmt.Println(0)
		return
	}
	cmb := NewCombination()
	cmb.build()
	fmt.Println(cmb.c(a+b, a))
}

const mod int = 1000000007

type Combination struct {
	max, mod int
	fact     []int
	factInv  []int
	inv      []int
}

func NewCombination() *Combination {
	c := &Combination{}
	c.max = 666667 //最大値を入れてみて増やす
	c.mod = int(1e9) + 7
	c.fact = make([]int, c.max)
	c.factInv = make([]int, c.max)
	c.inv = make([]int, c.max)
	return c
}

func (c *Combination) build() {
	c.inv[1], c.fact[0], c.factInv[0] = 1, 1, 1
	var i int
	for i = 2; i < c.max; i++ {
		c.inv[i] = c.inv[c.mod%i] * (c.mod - c.mod/i) % c.mod
	}
	for i = 1; i < c.max; i++ {
		c.fact[i] = c.fact[i-1] * i % c.mod
		c.factInv[i] = c.factInv[i-1] * c.inv[i] % c.mod
	}
	log.Println("build finish")
}

func (c *Combination) c(n, k int) int {
	if c.inv[0] == 0 {
		c.build()
	}
	if n < 0 || k < 0 || n < k {
		return 0
	}
	return ((c.fact[n] * c.factInv[k] % c.mod) * c.factInv[n-k]) % c.mod
}

func (c *Combination) p(n, k int) int {
	if k < 0 || k > n {
		return 0
	}
	return c.fact[n] * c.factInv[n-k] % c.mod
}

func (c *Combination) h(n, k int) int {
	if n == 0 && k == 0 {
		return 1
	}
	return c.c(n+k-1, k)
}

// c:N 個の整数の中から，相異なる K 個の整数を選ぶパターンの数C(N,K)
// p:N 個の整数の中から，相異なる K 個の整数を選び，順番に並べるパターンの数P(N,K)
// h:N 個の整数の中から，重複を許して K 個の整数を選ぶパターンの数H(N,K)

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
