package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n) // aをソートしたもの
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
		b[i] = a[i]
	}
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	for i := 0; i < n; i++ {
		if a[i] == b[0] {
			fmt.Println(b[1])
		} else {
			fmt.Println(b[0])
		}
	}
}
