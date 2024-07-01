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
	a, b := getInt(), getInt()

	if a-b > 1 {
		fmt.Println(2*a - 1)
	} else if b-a > 1 {
		fmt.Println(2*b - 1)
	} else {
		fmt.Println(a + b)
	}
}
