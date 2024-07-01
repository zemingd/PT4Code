package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	p, q, r := nextInt(), nextInt(), nextInt()

	maxf := func(l, m, r int) int {
		v := l
		if v < m {
			v = m
		}
		if v < r {
			v = r
		}
		return v
	}

	max := maxf(p, q, r)
	sum := p + q + r - max
	fmt.Println(sum)

}
