package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() uint64 {
	sc.Scan()
	a, err := strconv.ParseUint(sc.Text(), 10, 64)
	if err != nil {
		// fmt.Println(err)
	}
	return a
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
