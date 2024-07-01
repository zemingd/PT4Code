package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var k int
	var s string

	sc.Split(bufio.ScanWords)
	k = nextInt()
	fmt.Scanf("%s\n", &s)

	if len(s) > k {
		fmt.Print(s[:k]+"...")
	} else {
		fmt.Print(s)
	}
}
