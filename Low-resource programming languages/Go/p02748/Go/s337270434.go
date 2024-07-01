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
	mina, minb, min, sum := 100000, 100000, 0, 0
	arra := make([]int, a)
	for i := 0; i < a; i++ {
		arra[i] = readInt()
		if arra[i] < mina {
			mina = arra[i]
		}
	}
	arrb := make([]int, b)
	for i := 0; i < b; i++ {
		arrb[i] = readInt()
		if arrb[i] < minb {
			minb = arrb[i]
		}
	}
	min = mina + minb

	for i := 0; i < m; i++ {
		x, y, c := readInt(), readInt(), readInt()
		sum = arra[x-1] + arrb[y-1] - c
		if sum < min {
			min = sum
		}
	}
	fmt.Println(min)
}