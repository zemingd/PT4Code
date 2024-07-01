package main

import (
	"bufio"
	"fmt"
	"os"
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

func main() {
	sc.Split(bufio.ScanWords)
	var count int
	n, m := nextInt(), nextInt()
	hlist := make([]int, n)
	alist, blist := make([]int, m), make([]int, m)
	memo := make([]int, n)
	for i := 0; i < n; i++ {
		hlist[i] = nextInt()
	}
	fmt.Println(hlist)
	for i := 0; i < m; i++ {
		alist[i] = nextInt()
		blist[i] = nextInt()
	}
	for i := 0; i < m; i++ {
		if hlist[alist[i]-1] <= hlist[blist[i]-1] {
			memo[blist[i]-1] = 1
		} else {
			memo[alist[i]-1] = 1
		}
	}
	for i := 0; i < n; i++ {
		if memo[i] == 1 {
			count++
		}
	}
	fmt.Print(count)
}
