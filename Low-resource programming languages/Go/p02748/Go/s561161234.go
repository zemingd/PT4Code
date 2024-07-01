package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func main() {
	a, b, m := readInt(), readInt(), readInt()
	arra := make([]int, a)
	for i := 0; i < a; i++ {
		arra[i] = readInt()
	}

	arrb := make([]int, b)
	for i := 0; i < b; i++ {
		arrb[i] = readInt()
	}

	arrc := make([][]int, a)
	for i := 0; i < a; i++ {
		arrc[i] = make([]int, b)
	}
	for i := 0; i < m; i++ {
		arrc[readInt()-1][readInt()-1] = readInt()
	}

	min := 200000
	sum := 0
	for i := 0; i < a; i++ {
		for j := 0; j < b; j++ {
			sum = arra[i] + arrb[j] - arrc[i][j]
			if sum < min {
				min = sum
			}
			break
		}
	}
	fmt.Println(min)
}
