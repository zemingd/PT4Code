package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	x := nextLine()
	y := nextLine()

	if x == y[:len(x)] && len(x) + 1 == len(y) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

// =================================
// I/O util
// =================================

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}