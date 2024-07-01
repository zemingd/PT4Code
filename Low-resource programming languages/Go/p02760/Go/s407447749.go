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

	amat := nextIntMat(3, 3)
	n := nextInt()
	blist := make([]int, n)

	for i := 0; i < n; i++ {
		blist[i] = nextInt()

		// 着色
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if amat[j][k] == blist[i] {
					amat[j][k] = 0
				}
			}
		}
	}

	// 横確認
	for j := 0; j < 3; j++ {
		if amat[j][0] == 0 && amat[j][1] == 0 && amat[j][2] == 0 {
			fmt.Println("Yes")
			return
		}
	}

	// 縦確認
	for j := 0; j < 3; j++ {
		if amat[0][j] == 0 && amat[1][j] == 0 && amat[2][j] == 0 {
			fmt.Println("Yes")
			return
		}
	}

	// 右ななめ確認
	if amat[0][0] == 0 && amat[1][1] == 0 && amat[2][2] == 0 {
		fmt.Println("Yes")
		return
	}
	// 左ななめ確認
	if amat[0][2] == 0 && amat[1][1] == 0 && amat[2][0] == 0 {
		fmt.Println("Yes")
		return
	}

	fmt.Println("No")

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
