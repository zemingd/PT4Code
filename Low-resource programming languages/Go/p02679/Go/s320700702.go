package main

import (
	"bufio"
	. "fmt"
	"io"
	"math"
	"os"
)

type vec struct{ x, y int }

func (a vec) add(b vec) vec  { return vec{a.x + b.x, a.y + b.y} }
func (a vec) sub(b vec) vec  { return vec{a.x - b.x, a.y - b.y} }
func (a vec) dot(b vec) int  { return a.x*b.x + a.y*b.y }
func (a vec) det(b vec) int  { return a.x*b.y - a.y*b.x }
func (a vec) len2() int      { return a.x*a.x + a.y*a.y }
func (a vec) dis2(b vec) int { return a.sub(b).len2() }
func (a vec) len() float64   { return math.Hypot(float64(a.x), float64(a.y)) }

func (a *vec) adds(b vec) { a.x += b.x; a.y += b.y }
func (a *vec) subs(b vec) { a.x -= b.x; a.y -= b.y }

// github.com/EndlessCheng/codeforces-go
func run(_r io.Reader, _w io.Writer) {
	in := bufio.NewReader(_r)
	out := bufio.NewWriter(_w)
	defer out.Flush()
	gcd := func(a, b int) int {
		for a != 0 {
			a, b = b%a, a
		}
		return b
	}
	abs := func(x int) int {
		if x < 0 {
			return -x
		}
		return x
	}
	const mod int = 1e9 + 7
	pow := func(x int, n int) int {
		res := 1
		for ; n > 0; n >>= 1 {
			if n&1 == 1 {
				res = res * x % mod
			}
			x = x * x % mod
		}
		return res
	}

	type pair struct{ x, y int }
	var n int
	Fscan(in, &n)
	cnts := map[pair]int{}
	cnts2 := map[pair]int{}
centerCnt := 0
	for i := 0; i < n; i++ {
		var x,y int
		Fscan(in, &x,&y)
		if x == 0 && y == 0 {
			centerCnt++
			continue
		}

		if y < 0 {
			y=-y
			x=-x
		}
		if y == 0 {
			if x< 0 {
				x=-x
			}
		}

		g:= gcd(abs(x),abs(y))
		x/=g
		y/=g
		if x>0 {
			cnts[pair{x,y}]++
		} else {
			x,y=y,-x
			cnts2[pair{x,y}]++
		}
	}

	ans := 1
	for p, c := range cnts {
		c2 := cnts2[p]
		delete(cnts2,p)
		cc := 1+pow(2,c)-1+pow(2,c2)-1
		ans = ans * cc% mod
	}
	for _, c := range cnts2 {
		ans = ans * (c+1)% mod
	}

	if centerCnt > 0 {
		ans = (ans +centerCnt) % mod
	}

	ans-- // todo remove empty
	Fprintln(out, ans)
}

func main() { run(os.Stdin, os.Stdout) }
