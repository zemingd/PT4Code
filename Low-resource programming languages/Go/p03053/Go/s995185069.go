package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

func main() {
	H := nextInt()
	W := nextInt()
	A := make([][]byte, H)
	for i := 0; i < H; i++ {
		A[i] = nextBytes()
	}
	var cnt int
	for {
		b := make([]pair, 0)
		for i := 0; i < H; i++ {
			for j := 0; j < W; j++ {
				if A[i][j] == '#' {
					continue
				}
				for d := 0; d < 8; d += 2 {
					ny := i + dy[d]
					nx := j + dx[d]
					if ny < 0 || ny >= H || nx < 0 || nx >= W {
						continue
					}
					if A[ny][nx] == '#' {
						b = append(b, pair{i, j})
					}
				}
			}
		}
		if len(b) == 0 {
			break
		} else {
			for _, bi := range b {
				A[bi.a][bi.b] = '#'
			}
		}
		cnt++
	}
	fmt.Println(cnt)
}

var dy = []int{1, 1, 0, -1, -1, -1, 0, 1}
var dx = []int{0, 1, 1, 1, 0, -1, -1, -1}
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

var nextReader func() []byte

func init() {
	nextReader = newScanner()
	log.SetFlags(log.Lshortfile)
}

func newScanner() func() []byte {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() []byte {
		r.Scan()
		return r.Bytes()
	}
}
func nextBytes() []byte {
	return nextReader()
}

func nextString() string {
	return string(nextReader())
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(string(nextReader()), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(string(nextReader()))
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(string(nextReader()), 64)
	return f
}
