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

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}

func calcGcd(l, r int) int {
	if r > l {
		r, l = l, r
	}
	d := l % r
	for d != 0 {
		l = r
		r = d
		d = l % r
	}
	return r
}

func calcMaxGcd(ints []int) int {
	max := 0
	n := len(ints)
	if n == 2 {
		l, r := ints[0], ints[1]
		if l < r {
			return r
		}
		return l
	}
	// 小さいやつからにソートすると
	// 最大公約数はそれ以上大きくならないので、breakできる？

	for ignoreIndex := 0; ignoreIndex < n; ignoreIndex++ {
		before := 0
		gcd := 0
		for i := 0; i < n; i++ {
			if ignoreIndex == i {
				continue
			}
			if before == 0 {
				before = ints[i]
			} else {
				gcd = calcGcd(before, ints[i])
				before = ints[i]
				if max >= gcd {
					// 最大公約数を更新できない場合
					break
				}
			}
		}
		if max < gcd {
			max = gcd
		}
	}
	return max
}

func main() {
	n := nextInt()
	ints := nextInts(n)
	r := calcMaxGcd(ints)
	fmt.Println(r)
}
