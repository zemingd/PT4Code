package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	h := nextInt()
	n := nextInt()
	alist := make([]int, n)

	asum := 0
	for i := 0; i < n; i++ {
		alist[i] = nextInt()
		asum += alist[i]
	}

	if asum < h {
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
}

// ---- readfunc
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
	return sc.Text()
}
