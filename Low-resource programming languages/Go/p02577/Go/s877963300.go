package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		// fmt.Println(err)
	}
	return a
}

func scanInt3() (int, int, int) {
	return scanInt(), scanInt(), scanInt()
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()

	if N%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
