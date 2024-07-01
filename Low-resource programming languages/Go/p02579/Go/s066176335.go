package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"math"
	"os"
)

var mod = 1000000007
var inf = 1000000007

func main() {
	r := bufio.NewReader(os.Stdin)
	var H, W int
	fmt.Fscan(r, &H)
	fmt.Fscan(r, &W)

	var ch, cw int
	fmt.Fscan(r, &ch)
	fmt.Fscan(r, &cw)
	ch--
	cw--
	var dh, dw int
	fmt.Fscan(r, &dh)
	fmt.Fscan(r, &dw)
	dh--
	dw--

	matrix := make([]string, H)
	for i := 0; i < H; i++ {
		fmt.Fscan(r, &matrix[i])
	}

	// 各ポイントへのコスト
	d := make([][]int, H)
	for i := 0; i < H; i++ {
		c := make([]int, W)
		for j := 0; j < W; j++ {
			c[j] = math.MaxInt64
		}
		d[i] = c
	}
	// スタートポイントのコストは0
	d[ch][cw] = 0

	ph := &pheap{}

	heap.Init(ph)
	heap.Push(ph, ppoint{0, cw, ch})

	for ph.Len() > 0 {
		p := heap.Pop(ph).(ppoint)
		if p.x == dw && p.y == dh {
			break
		}

		for i := -2; i <= 2; i++ {
			for j := -2; j <= 2; j++ {
				if i == 0 && j == 0 {
					continue
				}
				cost := 0
				if abs(i) == 2 || abs(j) == 2 {
					cost = 1
				}

				//上下左右の探索対象を探す
				nx := p.x + i
				ny := p.y + j

				if 0 <= nx && nx < W && 0 <= ny && ny < H && matrix[ny][nx] != '#' && d[ny][nx] == math.MaxInt64 {
					// 探索対象ならキューに追加
					heap.Push(ph, ppoint{cost, nx, ny})
					// ポイントへのコストは現在ポイントまでのコスト+1
					d[ny][nx] = d[p.y][p.x] + cost
				}
			}
		}
	}

	// ゴールポイントのコストを出力
	if d[dh][dw] == math.MaxInt64 {
		fmt.Println(-1)
	} else {
		fmt.Println(d[dh][dw])
	}

}

type ppoint struct {
	p int
	x int
	y int
}

// priority_queue
type pheap []ppoint

func (h pheap) Len() int           { return len(h) }
func (h pheap) Less(i, j int) bool { return h[i].p < h[j].p }
func (h pheap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *pheap) Push(x interface{}) {
	*h = append(*h, x.(ppoint))
}
func (h *pheap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

// Queue ...
type Queue []point

// pop ...
func (q *Queue) empty() bool {
	return len(*q) == 0
}

// push ...
func (q *Queue) push(i point) {
	*q = append(*q, i)
}

// pop ...
func (q *Queue) pop() (point, bool) {
	if q.empty() {
		return point{}, false
	} else {
		res := (*q)[0]
		*q = (*q)[1:]
		return res, true
	}
}

// permutations
func permutations(arr []int) [][]int {
	var helper func([]int, int)
	res := [][]int{}

	helper = func(arr []int, n int) {
		if n == 1 {
			tmp := make([]int, len(arr))
			copy(tmp, arr)
			res = append(res, tmp)
		} else {
			for i := 0; i < n; i++ {
				helper(arr, n-1)
				if n%2 == 1 {
					tmp := arr[i]
					arr[i] = arr[n-1]
					arr[n-1] = tmp
				} else {
					tmp := arr[0]
					arr[0] = arr[n-1]
					arr[n-1] = tmp
				}
			}
		}
	}
	helper(arr, len(arr))
	return res
}

// Union-Find
type unionFind struct {
	d []int
}

func newUnionFind(n int) *unionFind {
	uf := new(unionFind)
	uf.d = make([]int, n)
	for i := 0; i < n; i++ {
		uf.d[i] = -1
	}
	return uf
}

func (uf *unionFind) find(x int) int {
	if uf.d[x] < 0 {
		return x
	}
	uf.d[x] = uf.find(uf.d[x])
	return uf.d[x]
}

func (uf *unionFind) unite(x, y int) bool {
	rootX := uf.find(x)
	rootY := uf.find(y)
	if rootX == rootY {
		return false
	}

	if uf.d[rootX] < uf.d[rootY] {
		uf.d[rootX] += uf.d[rootY]
		uf.d[rootY] = rootX
	} else {
		uf.d[rootY] += uf.d[rootX]
		uf.d[rootX] = rootY
	}

	return true
}

func (uf *unionFind) same(x, y int) bool {
	return uf.find(x) == uf.find(y)
}

func (uf *unionFind) size(x int) int {
	return -uf.d[uf.find(x)]
}

// mod
func modpow(a, n, mod int) int {
	res := 1
	for n > 0 {
		if n%2 != 0 {
			res = res * a % mod
		}
		a = a * a % mod
		n = n / 2
	}
	return res
}

func modinv(n, mod int) int {
	return modpow(n, mod-2, mod)
}

func modcomb(n, a, mod int) int {
	x := 1
	y := 1
	for i := 0; i < a; i++ {
		x = x * (n - i)
		x %= mod
		y = y * (i + 1)
		y %= mod
	}
	return x * modpow(y, mod-2, mod) % mod
}

func modfactorial(n, mod int) int {
	result := 1
	for i := 1; i <= n; i++ {
		result = (result * i) % mod
	}
	return result
}

// Combination ...
type Combination struct {
	facts, invs []int
	mod         int
}

// NewCombination ...
func NewCombination(n, mod int) Combination {
	return Combination{
		facts: make([]int, n+1),
		invs:  make([]int, n+1),
		mod:   mod,
	}
}

func (cmb *Combination) calc(n, k int) int {
	ret := cmb.facts[n] * cmb.invs[k]
	ret %= cmb.mod
	ret = ret * cmb.invs[n-k]
	ret %= cmb.mod
	return ret
}

func (cmb *Combination) init(n int) {
	cmb.facts[0] = 1
	// 階乗を算出
	for i := 1; i <= n; i++ {
		cmb.facts[i] = cmb.facts[i-1] * i % cmb.mod
	}
	// 逆元を算出
	cmb.invs[n] = modinv(cmb.facts[n], cmb.mod)
	for i := n - 1; i >= 0; i-- {
		cmb.invs[i] = cmb.invs[i+1] * (i + 1) % cmb.mod
	}
}

// Utility
func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func primeFactor(x int) map[int]int {
	res := make(map[int]int)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			res[i]++
			x = x / i
		}
	}
	if x != 1 {
		res[x] = 1
	}
	return res
}

func divisor(x int) []int {
	res := make([]int, 0)
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			res = append(res, i)
			if i != x/i {
				res = append(res, x/i)
			}
		}
	}
	return res
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func lcm(x, y int) int {
	return x / gcd(x, y) * y
}

func reverseString(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

func pow(a, n int) int {
	ret := 1
	for i := 1; i <= n; i++ {
		ret *= a
	}
	return ret
}

// Stack ...
type Stack []int

// pop ...
func (s *Stack) empty() bool {
	return len(*s) == 0
}

// push ...
func (s *Stack) push(i int) {
	*s = append(*s, i)
}

// pop ...
func (s *Stack) pop() (int, bool) {
	if s.empty() {
		return 0, false
	} else {
		index := len(*s) - 1
		res := (*s)[index]
		*s = (*s)[:index]
		return res, true
	}
}

// sortable points
type point struct {
	x int
	y int
}

type points []point

func (p points) Len() int {
	return len(p)
}

func (p points) Less(i, j int) bool {
	return p[i].x < p[j].x
}

func (p points) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}
