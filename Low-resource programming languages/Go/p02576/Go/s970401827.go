package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		// fmt.Println(err)
	}
	return a
}

func scanInt3() (int, int, int) {
	return scanInt(), scanInt(), scanInt()
}

func main() {
	sc.Split(bufio.ScanWords)

	N, X, T := scanInt3()

	if N%X > 0 {
		fmt.Println((N/X + 1) * T)
	} else {
		fmt.Println((N / X) * T)
	}
}
