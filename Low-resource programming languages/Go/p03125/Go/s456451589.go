package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func getFloat() float64 {
	sc.Scan()
	n, _ := strconv.ParseFloat(sc.Text(), 64)
	return n
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b := getInt(), getInt()

	if b%a == 0 {
		fmt.Println(a + b)
	} else {
		fmt.Println(b - a)
	}
}
