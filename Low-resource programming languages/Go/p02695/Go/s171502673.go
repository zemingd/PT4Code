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
	M := nextInt()
	Q := nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = 1
	}
	ques := make([]que, Q)
	for i := 0; i < Q; i++ {
		ques[i].a = nextInt() - 1
		ques[i].b = nextInt() - 1
		ques[i].c = nextInt()
		ques[i].d = nextInt()
	}
	ans := 0
	var dfs func([]int, int)
	dfs = func(a []int, idx int) {
		if idx == len(a) {
			sum := 0
			for _, q := range ques {
				if a[q.b]-a[q.a] == q.c {
					sum += q.d
					// log.Println(a)
				}
			}
			ans = max(ans, sum)
		} else {
			for i := a[idx-1]; i <= M; i++ {
				a[idx] = i
				dfs(a, idx+1)
			}
		}
	}
	for i := 1; i <= M; i++ {
		A[0] = i
		dfs(A, 1)
	}
	fmt.Println(ans)
}

type que struct {
	a, b, c, d int
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat64() float64 {
	sc.Scan()
	f, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}
	return f
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
