package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	sc = bufio.NewReader(os.Stdin)
)

type pos struct {
	t, x, y int
}

func (p *pos) arrive(p2 *pos) bool {
	t := p.t - p2.t
	x := p.x - p2.x
	y := p.y - p2.y
	if x+y == t {
		return true
	}
	if x+y < t && (t-(x+y))%2 == 0 {
		return true
	}
	if x+y < t && (t-(x+y))%2 == 1 {
		return false
	}
	if x+y == 1 && t%2 == 0 {
		return false
	}
	if x+y > t {
		return false
	}
	return true
}

func main() {
	N := scanInt()
	c := &pos{t: 0, x: 0, y: 0}
	for i := 0; i < N; i++ {
		n := &pos{t: scanInt(), x: scanInt(), y: scanInt()}
		if !n.arrive(c) {
			fmt.Println("No")
			return
		}
		if !rec(c, n) {
			fmt.Println("No")
			return
		}
		c = n
	}
	fmt.Println("Yes")
}

func rec(c, n *pos) bool {
	if !n.arrive(c) {
		return false
	}
	if c.t == n.t {
		if c.x == n.x && c.y == n.y {
			return true
		} else {
			return false
		}
	}
	// x+1, y
	if rec(&pos{t: c.t + 1, x: c.x + 1, y: c.y}, n) {
		return true
	}
	// x-1, y
	if rec(&pos{t: c.t + 1, x: c.x - 1, y: c.y}, n) {
		return true
	}
	// x, y+1
	if rec(&pos{t: c.t + 1, x: c.x, y: c.y + 1}, n) {
		return true
	}
	// x, y-1
	if rec(&pos{t: c.t + 1, x: c.x, y: c.y - 1}, n) {
		return true
	}

	return false
}

func scan(a ...interface{}) { _, err := fmt.Fscan(sc, a...); pnc(err) }
func scanStr() (s string)   { scan(&s); return }
func scanInt() int          { i, err := strconv.Atoi(scanStr()); pnc(err); return i }
func scanFloat() float64    { f, err := strconv.ParseFloat(scanStr(), 64); pnc(err); return f }
func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
