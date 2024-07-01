package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	a := nextInt()
	b := nextInt()
	m := nextInt()
	al := make([]int, a)
	bl := make([]int, b)
	for i := 0; i < a; i++ {
		al[i] = nextInt()
	}
	for i := 0; i < b; i++ {
		bl[i] = nextInt()
	}

	mat := nextIntMat(m, 3)
	cost := 0

	// 不使用時最小金額探索
	amin := 1000000
	bmin := 1000000
	for i := 0; i < a; i++ {
		amin = min(amin, al[i])
	}
	for i := 0; i < b; i++ {
		bmin = min(bmin, bl[i])
	}
	cost = amin + bmin

	//使用時最小金額探索
	for i := 0; i < m; i++ {
		r := mat[i][0] - 1
		d := mat[i][1] - 1
		c := mat[i][2]
		cost = min(cost, al[r]+bl[d]-c)
	}

	fmt.Println(cost)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
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
func scanInit() {
	const cap = 64 * 1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
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
