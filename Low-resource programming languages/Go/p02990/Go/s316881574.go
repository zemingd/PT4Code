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

func getInt() (n int) {
	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())
	return n
}

const ModConst = 1000000000 + 7

func getXCY(x, y int) int {
	a1, a2 := 1, 1
	for i := 0; i < y; i++ {
		a1 *= (x - i)
		a2 *= i + 1
	}
	return a1 / a2
}

func main() {
	N := getInt()
	K := getInt()

	B := N - K

	for i := 1; i <= K; i++ {
		a := getXCY(B+1, i)
		b := getXCY(K-1, i-1)
		fmt.Println((a * b) % ModConst)
	}
}
