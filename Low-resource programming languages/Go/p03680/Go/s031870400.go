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
	fmt.Println(SolveB(a))
}

func SolveB(a []int) int {
	if !contains(a, 2) {
		return -1
	}
	i := []int{}
	return find(1, a, 1, i)
}

func find(i int, a []int, t int, stack []int) int {
	if a[i-1] == 1 {
		return -1
	}
	if a[i-1] == 2 {
		return t
	}
	if contains(stack, i) {
		return -1
	}
	return find(a[i-1], a, t+1, append(stack,i))
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}