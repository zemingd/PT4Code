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

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]int, n)
	for i := 0; i < n ; i++ {
		a[i] = nextInt()
	}
	fmt.Println(SolveB(n, a))
}

func SolveB(x int, a []int) int {
	p := a[0]
	if !contains(a, 2) {
		return -1
	}

	for i := 1; ; i++ {
		p = a[p-1]
		if p == 1 {
			return -1
		}
		if p == 2 {
			return i + 1
		}
	}
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}