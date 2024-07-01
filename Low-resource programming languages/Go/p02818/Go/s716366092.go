package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	A, B, K := nextInt(), nextInt(), nextInt()

	sub := A - K
	if sub < 0 {
		B = B + sub
		A = 0
	}
	fmt.Println(A, B)
}
