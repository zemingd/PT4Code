package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextIntSlice(size int) []int {
	re := make([]int, size)
	for i := 0; i < size; i++ {
		re[i] = nextInt()
	}
	return re
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := nextIntSlice(n)

	now := 0
	c := 0
	for {
		if now == 1 {
			fmt.Println(c)
			return
		}
		if c >= n {
			fmt.Println(-1)
			return
		}
		c++
		now = a[now]
	}
}
