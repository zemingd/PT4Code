package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

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

	N := nextInt()
	var as, bs, cs []int
	for i := 0; i < N; i++ {
		as = append(as, nextInt())
	}
	for i := 0; i < N; i++ {
		bs = append(bs, nextInt())
	}
	for i := 0; i < N; i++ {
		cs = append(cs, nextInt())
	}

	sort.Ints(as)
	sort.Ints(bs)
	sort.Ints(cs)

	count := 0
	for bPos := 0; bPos < N; bPos++ {
		a, c := 0, 0
		for aPos := 0; aPos < N; aPos++ {
			if as[aPos] < bs[bPos] {
				a++
			}
		}
		for cPos := N - 1; cPos >= 0; cPos-- {
			if bs[bPos] < cs[cPos] {
				c++
			}
		}

		count += a * c
	}

	fmt.Println(count)
}
