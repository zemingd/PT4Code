package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	sc.Split(bufio.ScanWords)
	var c [26]int

	for i := 0; i < 26; i++ {
		c[i] = nextInt()
	}

	s := make([][]int, n)
	for i := 0; i < n; i++ {
		s[i] = make([]int, 26)
		for j := 0; j < 26; j++ {
			s[i][j] = nextInt()
		}
	}

	for i := 0; i < n; i++ {

		fmt.Println(maxIntSliceIndex(s[i]) + 1)
	}
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func maxInt(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func maxIntSliceIndex(a []int) int {
	b := a[0]
	ind := 0
	for i, v := range a {
		if b < v {
			ind = i
		}
	}
	return ind
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}
