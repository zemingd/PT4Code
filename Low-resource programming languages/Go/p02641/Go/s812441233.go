package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	x, n := scanInt(), scanInt()
	p := scanInts(n)

	var s []int
	for i := 0; i <= 101; i++ {
		ok := true
		for _, e := range p {
			if i == e {
				ok = false
			}
		}
		if ok {
			s = append(s, i)
		}
	}

	m := math.MaxInt32
	var ans int
	for _, e := range s {
		a := abs(x - e)
		if a < m {
			m = a
			ans = e
		}
	}

	fmt.Println(ans)
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
