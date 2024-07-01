package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func getInt() int {
	s.Scan()
	a, _ := strconv.Atoi(s.Text())
	return a
}

func main() {
	s.Split(bufio.ScanWords)
	k, x := getInt(), getInt()

	min := x - k + 1
	max := x + k - 1

	for i := min; i <= max; i++ {
		fmt.Printf("%d ", i)
	}
}
