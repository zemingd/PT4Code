package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

type Robot struct {
	x, long, left int
}

type Robots []Robot

func (r Robots) Len() int {
	return len(r)
}
func (r Robots) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func (r Robots) Less(i, j int) bool {
	return r[i].left < r[j].left
}

func main() {
	sc.Split(bufio.ScanWords)
	log.SetFlags(log.Lshortfile)
	n := nextInt()
	x := make([]int, n)
	l := make([]int, n)
	robots := make([]Robot, n)
	for i := 0; i < n; i++ {
		x[i] = nextInt()
		l[i] = nextInt()
		robots[i].x = x[i]
		robots[i].long = l[i]
		robots[i].left = x[i] - l[i]
	}
	sort.Sort(Robots(robots))
	// for i := 0; i < n; i++ {
	// 	log.Println(robots[i])
	// }
	delCnt := 0
	nowRight := robots[0].x + robots[0].long
	for i := 1; i < n; i++ {
		if robots[i].left < nowRight {
			delCnt++
		} else {
			nowRight = robots[i].x + robots[i].long
		}
	}
	fmt.Println(n - delCnt)
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
