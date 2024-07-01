package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func getInt() int64 {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return int64(n)
}

const ModConst = 1000000000 + 7

func getXCY(x, y int64) int64 {
	if x < y {
		return 0
	}
	if (x - y) < y {
		y = x - y
	}

	var a1, a2 = make([]int64, y), make([]int64, y)
	var i int64
	for i = 0; i < y; i++ {
		a1[i] = x - i
		a2[i] = y - i
	}

	for _, v2 := range a2 {
		for i1, v1 := range a1 {
			if v1%v2 == 0 {
				a1[i1] = v1 / v2
				break
			}
		}
	}

	var result int64 = 1
	for _, v1 := range a1 {
		result *= v1
		result = result % ModConst
	}

	return result
}

func main() {
	N := getInt()
	K := getInt()

	B := N - K

	var i int64
	for i = 1; i <= K; i++ {
		a1 := getXCY(B+1, i)
		if a1 == 0 {
			fmt.Println(0)
		} else {
			b1 := getXCY(K-1, i-1)
			//fmt.Println(a, b)
			fmt.Println((a1 % ModConst) * (b1 % ModConst) % ModConst)
		}
	}
}
