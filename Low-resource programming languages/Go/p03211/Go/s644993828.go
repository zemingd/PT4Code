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

func abs(x int) int {
	if x < 0 {
		return -1 * x
	}
	return x
}

func main() {
	sc.Split(bufio.ScanWords)

	s := next()
	ans := 753

	for i := 0; i < len(s)-2; i++ {
		x, e := strconv.Atoi(s[i:i+3])
		if e != nil {
			panic(e)
		}
		if ans > abs(x-753) {
			ans = abs(x-753)
		}
	}

	fmt.Println(ans)
}