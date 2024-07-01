// main is solve AtCoder ABC110 - A
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
	a := readInt()
	b := readInt()
	if solve(a, b) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func solve(a, b int) bool {
	if (a*b)%2 == 0 {
		return false
	}
	return true
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}
