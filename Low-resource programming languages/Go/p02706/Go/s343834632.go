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
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n, m := nextInt(), nextInt()
	count := 0
	for i := 0; i < m; i++ {
		A := nextInt()
		count += A
	}
	if n-count < 0 {
		fmt.Print("-1")
	} else {
		fmt.Print(n - count)
	}
}
