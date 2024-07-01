package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// AtCoder Functions
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
	sc.Split(bufio.ScanWords)
	N := nextInt()
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = nextInt()
	}

	ret := 0
	for i := 0; i < N; i++ {
		ret += (a[i] - 1)
	}
	fmt.Println(ret)
}
