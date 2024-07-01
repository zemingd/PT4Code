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
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	res := 0
	min := a[0]
	for i := 0; i < n; i++ {
		if a[i] <= min {
			res++
		}
		if a[i] < min {
			min = a[i]
		}
	}
	fmt.Println(res)
}
