package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	a, b := nextInt(), nextInt()

	sum := 0

	for i := 0; i < 2; i++ {
		if a > b {
			sum += a
			a--
		} else {
			sum += b
			b--
		}
	}
	fmt.Println(sum)
}
