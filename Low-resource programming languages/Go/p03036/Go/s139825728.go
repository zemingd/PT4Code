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
	r, d, x := nextInt(), nextInt(), nextInt()

	for i := 0; i < 10; i++ {
		x = (r * x) - d
		fmt.Println(x)
	}
}
