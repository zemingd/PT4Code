package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	finv, inv, fac [MAX]int
)

func COM(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % MOD) % MOD
}

func init() {
	fac[0] = 1
	fac[1] = 1
	finv[0] = 1
	finv[1] = 1
	inv[1] = 1
	for i := 2; i < MAX; i++ {
		fac[i] = fac[i-1] * i % MOD
		inv[i] = MOD - inv[MOD%i]*(MOD/i)%MOD
		finv[i] = finv[i-1] * inv[i] % MOD
	}
	//sc.Split(bufio.ScanLines)
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 500100)
}

const (
	MOD = 1000000007
	MAX = 510000
)

func ModAdd(a, b int64) int64 {
	return (a + b) % MOD
}

func ModMul(a, b int64) int64 {
	return a * b % MOD
}

func ModSub(a, b int64) int64 {
	r := (a%MOD - b%MOD) % MOD
	if r < 0 {
		r += MOD
	}
	return r
}

func ModDiv(a, b int64) int64 {
	return a % MOD * ModInv(b) % MOD
}

func ModPow(a, n int64) int64 {
	var r int64 = 1
	for n > 0 {
		if n&1 == 1 {
			r = r * a % MOD
		}
		a = a * a % MOD
		n >>= 1
	}
	return r
}

func ModInv(a int64) int64 {
	var b, u, v int64 = MOD, 1, 0
	for b > 0 {
		t := a / b
		a -= t * b
		a, b = b, a
		u -= t * v
		u, v = v, u
	}
	u %= MOD
	if u < 0 {
		u += MOD
	}
	return u
}

type Q struct {
	value int
	index int
	A, B  int
}

type QS []*Q

func (p QS) Len() int           { return len(p) }
func (p QS) Less(i, j int) bool { return p[i].value > p[j].value }
func (pq QS) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}

func (pq *QS) Push(x interface{}) {
	n := len(*pq)
	item := x.(*Q)
	item.index = n
	*pq = append(*pq, item)
}

func (pq *QS) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil  // avoid memory leak
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

func IsPrime(num int) bool {
	m := map[int]int{}
	return factor(m, num, 2)
}

func factor(result map[int]int, num, pnum int) bool {
	if pnum*pnum > num {
		if num != 1 {
			if result[num] > 0 {
				return false
			}

		}
		return true
	}

	if num%pnum == 0 {
		num /= pnum
		if result[pnum] > 0 {
			return false
		}
	} else {
		pnum++
	}
	return factor(result, num, pnum)
}

func GCD(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}

func LCM(a, b int64) int64 {
	return a * b / GCD(a, b)
}

type UnionFind struct {
	par  []int
	size []int
}

func NewUnionFind(size int) *UnionFind {
	return new(UnionFind).init(size)
}

func (uf *UnionFind) init(size int) *UnionFind {
	uf.par = make([]int, size)
	uf.size = make([]int, size)

	for i := 0; i < size; i++ {
		uf.par[i] = i
		uf.size[i] = 1
	}
	return uf
}

func (uf *UnionFind) Unite(p int, q int) {
	rp := uf.Root(p)
	rq := uf.Root(q)
	if rp == rq {
		return
	}
	if uf.size[rp] < uf.size[rq] {
		uf.par[rp] = uf.par[rq]
		uf.size[rq] += uf.size[rp]
	} else {
		uf.par[rq] = uf.par[rp]
		uf.size[rp] += uf.size[rq]
	}
}

func (uf *UnionFind) Root(p int) int {
	for uf.par[p] == p {
		return p
	}
	uf.par[p] = uf.Root(uf.par[p])
	return uf.par[p]
}

func (uf *UnionFind) Size(p int) int {
	return uf.size[uf.Root(p)]
}

func (uf *UnionFind) Same(p int, q int) bool {
	return uf.Root(p) == uf.Root(q)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	n, _ := strconv.Atoi(getStr())
	return n
}

func getStr() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	N, H := getInt(), getInt()
	A := make([]int, N)
	B := make([]int, N)
	for i := 0; i < N; i++ {
		A[i], B[i] = getInt(), getInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(A)))
	sort.Sort(sort.Reverse(sort.IntSlice(B)))
	cnt := 0
	hp := H
	for i := 0; i < N; i++ {
		if B[i] < A[0] {
			break
		}
		hp -= B[i]
		cnt++
		if hp <= 0 {
			break
		}
	}
	for hp > 0 {
		hp -= A[0]
		cnt++
	}
	fmt.Println(cnt)
}

type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *IntHeap) Push(x interface{}) {
	// Push and Pop use pointer receivers because they modify the slice's length,
	// not just its contents.
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
