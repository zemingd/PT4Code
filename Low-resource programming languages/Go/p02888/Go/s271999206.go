package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	L := make([]int, N)
	for i := 0; i < N; i++ {
		L[i] = scanInt()
	}
	sort.Ints(L)

	ans := 0
	for i := 0; i < N; i++ {
		a := L[i]
		for j := i + 1; j < N; j++ {
			b := L[j]
			index := sort.SearchInts(L, a+b)
			ans += (index - j - 1)
		}
	}
	fmt.Println(ans)
}
