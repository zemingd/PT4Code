package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func main() {
	a := make([][]int, 3)
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			a[i] = append(a[i], readInt())
		}
	}
	n := readInt()
	for k := 0; k < n; k++ {
		hit := readInt()
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if a[i][j] == hit {
					a[i][j] = 0
				}
			}
		}
	}
	switch {
	case ((a[0][0] == 0) && (a[0][1] == 0) && (a[0][2] == 0)) ||
		((a[1][0] == 0) && (a[1][1] == 0) && (a[1][2] == 0)) ||
		((a[2][0] == 0) && (a[2][1] == 0) && (a[2][2] == 0)) ||
		((a[0][0] == 0) && (a[1][0] == 0) && (a[2][0] == 0)) ||
		((a[0][1] == 0) && (a[1][1] == 0) && (a[2][1] == 0)) ||
		((a[0][2] == 0) && (a[1][2] == 0) && (a[2][2] == 0)) ||
		((a[0][0] == 0) && (a[1][1] == 0) && (a[2][2] == 0)) ||
		((a[0][2] == 0) && (a[1][1] == 0) && (a[2][0] == 0)):
		fmt.Println("Yes")
	default:
		fmt.Println("No")
	}
}
