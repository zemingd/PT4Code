package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b, x := nextInt(), nextInt(), nextInt()

	fmt.Printf("%d\n", ABC048B(a, b, x))
}

// ABC048B ...
func ABC048B(a, b, x int) int {
	return b/x - (a-1)/x
}
