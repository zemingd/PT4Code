package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextStr() string {
	sc.Scan()
	s := sc.Text()
	return s
}

func getRuneAt(s string, i int) rune {
	rs := []rune(s)
	return rs[i]
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()

	var val []int
	val = make([]int, 5)
	for index := 0; index < 5; index++ {
		val[index] = nextInt()
	}
	val = sort.IntSlice(val)
	if val[0] == n {
		fmt.Print(5)
		return
	}
	if val[0] == 1 {
		fmt.Print(5 + n)
		return
	}
	fmt.Print(n/val[0] + 5)
}