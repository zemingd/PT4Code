package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	mod = 1000000007
)

type point struct {
	a int
	b int
}

func gcd(x int, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func normalize(p point) point {
	a := abs(p.a)
	b := abs(p.b)
	g := gcd(a, b)
	if g == 0 {
		return point{a, b}
	}
	if p.a*p.b > 0 {
		return point{a / g, b / g}
	}
	return point{-a / g, b / g}
}

func pow2(c int) int {
	if c == 0 {
		return 1
	}
	r := 1
	if c%2 == 1 {
		r = 2
	}
	p := pow2(c/2) % mod
	return p * p * r % mod
}

type tup struct {
	c1 int
	c2 int
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var n int
	var a, b int
	fmt.Scanf("%d\n", &n)
	m := make(map[point]*tup)
	zeros := 0
	for i := 0; i < n; i++ {
		a = nextInt()
		b = nextInt()
		p := normalize(point{a, b})
		if p.a == 0 && p.b == 0 {
			zeros += 1
			continue
		}
		q := p
		if q.a < 0 {
			q.a, q.b = q.b, -q.a
		}
		t, ok := m[q]
		if !ok {
			m[q] = &tup{}
			t = m[q]
		}
		if p.a >= 0 {
			t.c1 += 1
		} else {
			t.c2 += 1
		}
	}
	ans := 1
	for _, t := range m {
		ans *= (pow2(t.c1) + pow2(t.c2) - 1) % mod
		ans %= mod
	}
	ans -= 1
	ans += zeros
	ans %= mod
	fmt.Println(ans)
}
