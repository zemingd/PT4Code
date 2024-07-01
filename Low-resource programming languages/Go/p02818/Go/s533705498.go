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

	a, b, k := nextInt(), nextInt(), nextInt()

	if a < k {
		k -= a
		a = 0
	} else {
		a -= k
		fmt.Println(a, b)
		return
	}

	if b < k {
		fmt.Println(0, 0)
	} else {
		b -= k
		fmt.Println(a, b)
	}
}