package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	mod int64 = 1000000007
)

type point64 struct {
	a int64
	b int64
}

func gcd(x int64, y int64) int64 {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func abs(x int64) int64 {
	if x < 0 {
		return -x
	}
	return x
}

func normalize(p point64) point64 {
	a := abs(p.a)
	b := abs(p.b)
	g := gcd(a, b)
	if g == 0 {
		return point64{a, b}
	}
	if p.a*p.b > 0 || p.b == 0 {
		return point64{a / g, b / g}
	}
	return point64{-a / g, b / g}
}

func pow2(c int64) int64 {
	if c == 0 {
		return 1
	}
	var r int64 = 1
	if c%2 == 1 {
		r = 2
	}
	p := pow2(c/2) % mod
	return p * p * r % mod
}

type tup struct {
	c1 int64
	c2 int64
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var n int64
	var a, b int64
	fmt.Scanf("%d\n", &n)
	m := make(map[point64]*tup)
	var zeros int64 = 0
	for i := int64(0); i < n; i++ {
		a = nextInt64()
		b = nextInt64()
		p := normalize(point64{a, b})
		if p.a == 0 && p.b == 0 {
			zeros += 1
			continue
		}
		q := p
		if q.a <= 0 {
			q.a, q.b = q.b, -q.a
		}
		t, ok := m[q]
		if !ok {
			m[q] = &tup{}
			t = m[q]
		}
		if p.a > 0 {
			t.c1 += 1
		} else {
			t.c2 += 1
		}
	}
	ans := int64(1)
	for _, t := range m {
		ans *= (pow2(t.c1) + pow2(t.c2) - 1) % mod
		ans %= mod
	}
	ans -= 1
	ans += zeros
	ans %= mod
	fmt.Println(ans)
}
