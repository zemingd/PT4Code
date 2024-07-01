package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

////////////////////////////////////////
///        templates                 ///
////////////////////////////////////////

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readBigLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func strSprit(str string) []string {
	cols := strings.Split(str, " ")
	return cols
}

func parseInt(str string) int {
	n, _ := strconv.Atoi(str)
	return n
}

func intSprit(str string) []int {
	strs := strSprit(str)
	cols := make([]int, len(strs))
	for i, v := range strs {
		cols[i] = parseInt(v)
	}
	return cols
}

func bitCount(n uint) int {

	x := uint64(n)

	const m = 1<<64 - 1
	const m0 = 0x5555555555555555
	const m1 = 0x3333333333333333
	const m2 = 0x0f0f0f0f0f0f0f0f

	x = x>>1&(m0&m) + x&(m0&m)
	x = x>>2&(m1&m) + x&(m1&m)
	x = (x>>4 + x) & (m2 & m)
	x += x >> 8
	x += x >> 16
	x += x >> 32

	return int(x) & (1<<7 - 1)
}

func bitExist(n, i int) bool {
	return ((n >> uint(i)) & 1) == 1
}

func setBit(d, n int) int {
	t := 1 << uint(n)
	return d | t
}

func intAbs(n int) int {
	return int(math.Abs(float64(n)))
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////
type pair struct {
	l, idx int
	s      string
}

func isFlat(s string) bool {
	if len(s) <= 0 {
		return false
	}
	t := s[0]
	for i := 1; i < len(s); i++ {
		if t != s[i] {
			return false
		}
	}
	return true
}

func main() {
	S := readBigLine()

	q := []pair{pair{0, 0, S}}

	var t pair

	ret := 0
	for len(q) > 0 {
		t, q = q[len(q)-1], q[:len(q)-1]

		if (t.l + len(t.s)) < ret {
			continue
		}

		point := -1
		for i := t.idx; i < len(t.s)-1; i++ {
			p := t.s[i]
			n := t.s[i+1]
			if p != n {
				point = i
				break
			}
		}

		if point < 0 {
			if isFlat(t.s) {
				continue
			}
			if t.l < ret {
				continue
			}
			q = append(q, pair{t.l, 0, t.s})
		}

		news := t.s[:point] + t.s[point+2:]
		newl := t.l + 2
		if ret < newl {
			ret = newl
		}
		if len(news) >= 2 {
			q = append(q, pair{newl, 0, news})
			q = append(q, pair{t.l, point + 1, t.s})
		}
	}
	fmt.Println(ret)
}
