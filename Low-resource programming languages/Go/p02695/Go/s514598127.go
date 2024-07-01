package main

import (
	"fmt"
)

const MOD = 1000000007

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
	idx, value int
	a, b       int
	index      int
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

func GCD(a, b int) int {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}

func LCM(a, b int) int {
	return a * b / GCD(a, b)
}

var R = [][]int{}

func main() {
	var N, M, Q int
	fmt.Scanf("%d %d %d\n", &N, &M, &Q)
	A := make([]int, Q)
	B := make([]int, Q)
	C := make([]int, Q)
	D := make([]int, Q)

	for i := 1; i <= M; i++ {
		rec([]int{}, i, M, N)
	}
	for i := 0; i < Q; i++ {
		var a, b, c, d int
		fmt.Scanf("%d %d %d %d\n", &a, &b, &c, &d)
		A[i] = a
		B[i] = b
		C[i] = c
		D[i] = d
	}

	max := 0
	for _, r := range R {
		score := 0
		for i := 0; i < Q; i++ {
			a := A[i]
			b := B[i]
			c := C[i]
			d := D[i]
			if r[b-1]-r[a-1] == c {
				score += d
			}
		}
		if score > max {
			max = score
		}
	}
	fmt.Println(max)

}

func rec(r []int, s, e int, l int) {
	if len(r) == l {
		R = append(R, r)
		return
	}
	for i := s; i <= e; i++ {
		for j := i; j <= e; j++ {
			r := append([]int{}, r...)
			r = append(r, j)
			if i == j {
				rec(r, j, e, l)
			}
		}
	}
}

func Reverse(runes []rune) []rune {
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return runes
}
