package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	K, X := nextInt(), nextInt()

	min := X - K + 1
	max := X + K - 1

	for i := min; i <= max; i++ {
		fmt.Printf("%d ", i)
	}
	fmt.Println()
}
