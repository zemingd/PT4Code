package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	x := nextInt()
	var c int
	for i := 100; i < x; i += int(float64(i) * 0.01) {
		c++
	}

	fmt.Println(c)
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

// =================================
