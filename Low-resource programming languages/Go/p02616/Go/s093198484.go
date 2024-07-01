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
	ans := a * b % MOD
	if ans < 0 {
		ans += MOD
	}
	return ans
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

func factor(result map[int]int, num, pnum int) map[int]int {
	if pnum*pnum > num {
		if num != 1 {
			result[num] += 1
		}
		return result
	}

	if num%pnum == 0 {
		num /= pnum
		result[pnum]++
	} else {
		pnum++
	}
	return factor(result, num, pnum)
}

func main() {
	N, K := getInt(), getInt()
	P := make([]int, 0)
	M := make([]int, 0)
	for i := 0; i < N; i++ {
		n := getInt()
		if n >= 0 {
			P = append(P, n)
		} else {
			M = append(M, n)
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(P)))
	sort.Ints(M)
	if K == N {
		ans := int64(1)
		for i := 0; i < len(P); i++ {
			ans = ModMul(ans, int64(P[i]))
		}
		for i := 0; i < len(M); i++ {
			ans = ModMul(ans, int64(M[i]))
		}
		if ans < 0 {
			ans += MOD
		}
		fmt.Println(ans)
		return
	}
	if len(P) == 0 {
		ans := int64(1)
		if K%2 == 0 {
			for i := 0; i < K; i++ {
				ans = ModMul(ans, int64(M[i]))
			}
		} else {
			for i := len(M) - 1; i > len(M)-K-1; i-- {
				ans = ModMul(ans, int64(M[i]))
			}
		}
		fmt.Println(ans)
		return
	}

	//ans := int64(1)
	k := K
	V := make([]int, 0, K)
	/*
		if k%2 != 0 {
			//ans = ModMul(ans, int64(P[0]))
			V = append(V, P[0])
			P = P[1:]
			k--
		}
	*/
	for len(V) < K {
		/*
			if len(V) == K-1 {
				V = append(V, P[0])
				P = P[1:]
				//ans = ModMul(ans, p)
				k--
				continue
			}
		*/
		if len(P) > 1 && len(M) > 1 {
			p := int64(P[0]) * int64(P[1])
			m := int64(M[0]) * int64(M[1])
			if p > m || len(V) == K-1 {
				//ans = ModMul(ans, p)
				V = append(V, P[0])
				P = P[1:]
				k--
			} else {
				//ans = ModMul(ans, m)
				V = append(V, M[0], M[1])
				M = M[2:]
				k -= 2
			}
		} else if len(P) > 0 {
			//p := ModMul(int64(P[0]), int64(P[1]))
			V = append(V, P[0])
			P = P[1:]
			//ans = ModMul(ans, p)
			k--
		} else if len(M) > 0 {
			//m := ModMul(int64(M[0]), int64(M[1]))
			V = append(V, M[0])
			M = M[1:]
			//ans = ModMul(ans, m)
			k--
		}
	}
	/*
		fmt.Println(k, P, M, ans)
		if k == 0 {
		} else if k == 1 && 0 < len(P) {
			ans = ModMul(ans, int64(P[0]))
		} else if k == 1 && 0 < len(M) {
			ans = ModMul(ans, int64(M[len(M)-1]))
		} else {
			n := ModMul(int64(P[0]), int64(M[len(M)-1]))
			ans = ModMul(ans, n)
		}
	*/
	//fmt.Println(ans)
	ans := int64(1)
	for _, v := range V {
		ans = ModMul(ans, int64(v))
	}
	fmt.Println(ans)
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
