package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanInt2() (int, int) {
	return scanInt(), scanInt()
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b := scanInt2()
	fmt.Println(int(math.Pow(100, float64(a))) * b)
}
