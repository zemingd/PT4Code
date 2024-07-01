package main

import (
	"fmt"
)

func main() {
	var n int64
	fmt.Scan(&n)

	fs := factorization(n)

	var cnt int
	for _, f := range fs {
		x := f.q
		b := int64(1)
		for b <= x {
			x -= b
			b++
			cnt++
		}
	}
	fmt.Println(cnt)
}

// Pow の定義
type Pow struct {
	p, q int64
}

// Pow の生成
func newPow(p, q int64) *Pow {
	a := new(Pow)
	a.p, a.q = p, q
	return a
}

// Stringer の定義
func (p *Pow) String() string {
	return fmt.Sprintf("(%d, %d)", p.p, p.q)
}

// m で割り切れる回数を求める
func factorSub(n, m int64) (int64, int64) {
	i := int64(0)
	for ; n%m == 0; n /= m {
		i++
	}
	return i, n
}

// 素因数分解
func factorization(n int64) []*Pow {
	a := make([]*Pow, 0)
	c, m := factorSub(n, 2)
	if c > 0 {
		a = append(a, newPow(2, c))
	}
	for i := int64(3); m >= i*i; i += 2 {
		c, m = factorSub(m, i)
		if c > 0 {
			a = append(a, newPow(i, c))
		}
	}
	if m > 1 {
		a = append(a, newPow(m, 1))
	}
	return a
}
