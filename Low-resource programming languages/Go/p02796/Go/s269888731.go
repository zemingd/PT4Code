package main

import (
	"bufio"
	"log"
	"math"
	"os"
	"strconv"
	"fmt"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)
var N int
var ans int
var x []int
var l []int
var robots  []pair

func main() {
	sc.Split(bufio.ScanWords)
	log.SetFlags(log.Lshortfile)
	n := nextInt()
	x = make([]int, n)
	l = make([]int, n)
	robots = make([]pair, n)
	for i:=0; i<n; i++{
		x[i] = nextInt()
		l[i] = nextInt()
		robots[i].a = x[i]
		robots[i].b = l[i]
	}
	sort.Sort(pairs(robots))
	dell := make([]bool, n)
	right := -1000000000
	index := 0
	N = n
	bfs(dell, right, index)
	fmt.Println(ans)
}

func bfs(dell []bool, right int, idx int) {
	// log.Println(dell)
	if idx == N {
		ans = max(ans, N-cntbool(dell))
		return
	}
	// 使うとき
	if right <= robots[idx].a-robots[idx].b{
		right = robots[idx].a+robots[idx].b
		bfs(dell, right, idx+1)
	}else{
		// log.Println(dell, right, idx)
	}
	// 使わないとき
	dell[idx]=true
	bfs(dell, right, idx+1)
	return
}

func cntbool(bs []bool) int {
	cnt := 0
	for i := 0; i < len(bs); i++ {
		if bs[i] == true {
			cnt++
		}
	}
	return cnt
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
