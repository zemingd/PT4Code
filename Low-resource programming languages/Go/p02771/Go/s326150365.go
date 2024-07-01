package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)

	a := nextInt()
	b := nextInt()
	c := nextInt()

	cnt := isSame(a, b)
	cnt += isSame(b, c)
	cnt += isSame(c, a)

	if cnt == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isSame(x, y int) int {
	if x == y {
		return 1
	} else {
		return 0
	}
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}