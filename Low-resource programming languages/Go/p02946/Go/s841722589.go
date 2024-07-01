package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	k, x := nextInt(), nextInt()

	for i := x - (k - 1); i < (x + (k - 1)); i++ {
		fmt.Print(i)
		fmt.Print(" ")
	}
	fmt.Println(x + (k - 1))
}
