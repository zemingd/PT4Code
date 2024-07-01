package main

import (
	"fmt"
	"bufio"
	"os"
	// "strings"
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

	res := 1
	for i := 1; i < n; i++ {
		ok := true
		for j := 0; j < i; j++ {
			if a[j] - a[i] < 0 {
				ok = false
				break
			}
		}
		if ok {
			res++
		}
	}
	fmt.Println(res)
}
