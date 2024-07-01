package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type ByRune []rune

func (r ByRune) Len() int {
	return len(r)
}

func (r ByRune) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func (r ByRune) Less(i, j int) bool {
	return r[i] < r[j]
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt()

	strMap := make(map[string]int)
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		rs := []rune(s)
		sort.Sort(ByRune(rs))
		sSorted := string(rs)
		_, ok := strMap[sSorted]
		if ok {
			strMap[sSorted]++
		} else {
			strMap[sSorted] = 1
		}
	}

	ans := 0
	for _, v := range strMap {
		ans += v * (v - 1) / 2
	}
	fmt.Println(ans)
}
