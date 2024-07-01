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
	var a1, a2, i int64
	a1, a2 = 1, 1
	for i = 0; i < y; i++ {
		a1 *= (x - i)
		a2 *= i + 1
		if a1%a2 == 0 {
			a1 = a1 / a2
			a2 = 1
		}
	}
	return a1 / a2
}

func main() {
	N := getInt()
	K := getInt()

	B := N - K

	var i int64
	for i = 1; i <= K; i++ {
		a := getXCY(B+1, i)
		if a == 0 {
			fmt.Println(0)
		} else {
			b := getXCY(K-1, i-1)
			fmt.Println((a * b) % ModConst)
		}
	}
}
