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

	z := 0
	o := 0

	for _, v := range S {
		sv := string(v)
		if sv == "0" {
			z++
		} else {
			o++
		}
	}

	low := 0

	if z >= o {
		low = o
	} else {
		low = z
	}

	fmt.Println(low * 2)
}
