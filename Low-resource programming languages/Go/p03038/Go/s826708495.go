package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func COM(n, k int64) int64 {
	r := int64(1)
	for i := int64(0); i < k; i++ {
		r = ModMul(r, n-i)
		r = ModDiv(r, i+1)
	}

	return r
}

const (
	MOD = 1000000000 + 7
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

func FactoredPrimeNumber(num int) map[int]int {
	m := map[int]int{}
	return factor(m, num, 2)
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

func GCD(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}

func LCM(a, b int64) int64 {
	return a * b / GCD(a, b)
}

type P struct {
	B, C int
}

type PS []*P

func (p PS) Len() int           { return len(p) }
func (p PS) Less(i, j int) bool { return p[i].C > p[j].C }
func (pq PS) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	M, _ := strconv.Atoi(sc.Text())
	A := &IntHeap{}
	heap.Init(A)
	for i := 0; i < N; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		heap.Push(A, a)
	}
	PS := make(PS, M)
	for i := 0; i < M; i++ {
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())
		PS[i] = &P{b, c}
	}
	sort.Sort(PS)

	sum := 0
	for i := 0; i < M; i++ {
		if A.Len() == 0 {
			break
		}
		min := heap.Pop(A).(int)
		p := PS[i]
		if min >= p.C {
			sum += min
			break
		}
		sum += p.C
		for i := 1; i < p.B; i++ {
			if A.Len() == 0 {
				break
			}
			min := heap.Pop(A).(int)
			if min >= p.C {
				sum += min
				break
			}
			sum += p.C
		}

	}
	if A.Len() > 0 {
		for _, a := range *A {
			sum += a
		}
	}

	fmt.Println(sum)
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
