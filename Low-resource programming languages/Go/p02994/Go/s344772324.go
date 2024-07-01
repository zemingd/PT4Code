package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
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

func main() {
	sc.Split(bufio.ScanWords)

	n, l := nextInt(), nextInt()
	sum := 0
	for i := 0; i < n; i++ {
		sum += l + i
	}

	if l > 0 {
		sum -= l
	} else if -1 * l > n {
		sum -= l + n - 1
	}

	fmt.Println(sum)
}