package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
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
type Pair struct {
	A, B int64
}

type Pairs []Pair

func (p Pairs) Len() int {
	return len(p)
}
func (p Pairs) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}
func (p Pairs) Less(i, j int) bool {
	if p[i].A == p[j].A {
		return p[i].B < p[j].B
	} else {
		return p[i].A < p[j].A
	}
}

func main() {
	line := nextLine()
	spl := intSprit(line)

	N := spl[0]
	M := int64(spl[1])

	p := make([]Pair, N)

	for i := 0; i < N; i++ {
		s := intSprit(nextLine())
		p[i].A = int64(s[0])
		p[i].B = int64(s[1])
	}

	sort.Sort(Pairs(p))

	m := int64(0)
	res := int64(0)
	for i := 0; i < N; i++ {
		if m+p[i].B > M {
			res += (M - m) * p[i].A
			break
		} else if m+p[i].B == M {
			res += p[i].B * p[i].A
			break
		} else {
			m += p[i].B
			res += p[i].A * p[i].B
		}
	}
	fmt.Println(res)
}
