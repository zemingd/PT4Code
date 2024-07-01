package main

import (
	"fmt"
	"sort"
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

func main() {
	var S string
	fmt.Scanf("%s\n", &S)

	rs := []rune(S)
	positions := []int{}
	pos := 0
	for pos < len(rs) {
		if string(rs[pos+1]) == "R" {
			pos++
			continue
		}
		positions = append(positions, pos)
		pos++
		for pos < len(rs) {
			if string(rs[pos]) == "R" {
				break
			}
			pos++
		}
	}
	m := map[int]int{}
	pos = 0
	for pos < len(rs) {
		idx := sort.SearchInts(positions, pos)
		i := positions[idx]
		if (i-pos)%2 != 0 {
			m[i+1]++
		} else {
			m[i]++
		}
		if i-pos == 0 {
			pos++
			for pos < len(rs) && string(rs[pos]) == "L" {
				if (pos-i)%2 != 0 {
					m[i+1]++
				} else {
					m[i]++
				}
				pos++
			}
		} else {
			pos++
		}
	}
	for i := 0; i < len(rs); i++ {
		fmt.Print(m[i])
		fmt.Print(" ")
	}
	fmt.Println()

}
