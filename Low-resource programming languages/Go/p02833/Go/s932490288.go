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
var buff []byte

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buff, bufio.MaxScanTokenSize*1024)
	log.SetFlags(log.Lshortfile)
}

func main() {
	N := nextInt()
	if N%2 == 1 {
		fmt.Println("0")
	} else {
		N /= 2
		ans := 0
		for N != 0 {
			ans += N / 5
			N /= 5
		}
		fmt.Println(ans)
	}
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextInts(n int) (r []int) {
	r = make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

var dy = []int{0, 1, 0, -1}
var dx = []int{1, 0, -1, 0}
var MAX = math.MaxInt32

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

type Pair struct {
	a, b int
}

type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}
func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Pairs) Less(i, j int) bool {
	if p[i].a == p[j].a {
		return p[i].b < p[j].b
	}
	return p[i].a < p[j].a
}
