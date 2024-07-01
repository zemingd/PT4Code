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

	i := 1
	cnt := 0
	for k := 0; k < n; k++ {
		cnt++
		j := a[i-1]
		if j == 2 {
			fmt.Println(cnt)
			return
		}
		i = j
	}
	fmt.Println(-1)
}
