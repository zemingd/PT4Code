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

func countGreaterOrEq(ints []int) (count int) {
	min := ints[0]
	for _, v := range ints {
		if min >= v {
			min = v
			count++
		}
	}
	return
}

func main() {
	n := nextInt()
	ps := make([]int, n)
	for i := 0; i < n; i++ {
		ps[i] = nextInt()
	}

	r := countGreaterOrEq(ps)

	fmt.Println(r)
}
