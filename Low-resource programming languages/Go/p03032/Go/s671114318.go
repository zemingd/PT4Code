package main

import (
	"fmt"
	"sort"
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

func main() {
	var N, K int
	fmt.Scanf("%d %d\n", &N, &K)
	V := make([]int, N)
	for i := 0; i < N; i++ {
		var v int
		fmt.Scan(&v)
		V[i] = v
	}
	O := K
	if O > N {
		O = N
	}
	max := 0
	for l := 0; l <= O; l++ {
		for r := 0; r+l <= O; r++ {
			v := []int{}
			sum := 0
			for i := 0; i < l; i++ {
				v = append(v, V[i])
				sum += V[i]
			}
			for i := 0; i < r; i++ {
				v = append(v, V[N-i-1])
				sum += V[N-i-1]
			}

			sort.Ints(v)
			l := K - r - l
			if l > len(v) {
				l = len(v)
			}
			for i := 0; i < l; i++ {
				if v[i] < 0 {
					sum = sum - v[i]
				}
			}
			if sum > max {
				max = sum
			}
		}

	}
	fmt.Println(max)
}

func Reverse(runes []rune) []rune {
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return runes
}
