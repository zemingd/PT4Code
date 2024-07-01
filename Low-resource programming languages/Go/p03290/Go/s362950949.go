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

func main() {
	line := nextLine()
	spl := intSprit(line)

	D := spl[0]
	G := spl[1]

	p := make([]int, D+1)
	c := make([]int, D+1)

	for i := 0; i < D; i++ {
		s := intSprit(nextLine())
		p[i] = s[0]
		c[i] = s[1]
	}

	res := 1 << 30
	for b := 0; b < (1 << uint(D)); b++ {
		s := 0
		cnt := 0
		rm := -1
		for i := 0; i < D; i++ {
			if bitExist(b, i) {
				s += 100*(i+1)*p[i] + c[i]
				cnt += p[i]
			} else {
				rm = i
			}
		}
		if s < G {
			st := 100 * (rm + 1)
			tc := (G - s + st - 1) / st
			if tc >= p[rm] {
				continue
			}
			cnt += tc
		}
		if res > cnt {
			res = cnt
		}
	}
	fmt.Println(res)

}
