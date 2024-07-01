package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := readInt()
	a, b := readInt(), readInt()

	d := n / (a + b)
	r := n % (a + b)

	ans := 0
	if a > r {
		ans = d*a + r
	} else {
		ans = d*a + a
	}
	fmt.Println(ans)
}
