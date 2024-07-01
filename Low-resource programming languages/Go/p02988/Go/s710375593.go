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

	n := nextInt()
	plist := make([]int, n)
	for i := 0; i < n; i++ {
		plist[i] = nextInt()
	}

	cnt := 0
	for i := 1; i < n-1; i++ {
		if plist[i-1] <= plist[i] && plist[i] <= plist[i+1] {
			cnt++
		} else if plist[i-1] >= plist[i] && plist[i] >= plist[i+1] {
			cnt++
		}

	}

	fmt.Println(cnt)
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
func nextIntMat(a int, b int) [][]int {
	mat := make([][]int, a)
	for i := 0; i < a; i++ {
		mat[i] = make([]int, b)
		for j := 0; j < b; j++ {
			mat[i][j] = nextInt()
		}
	}
	return mat
}
