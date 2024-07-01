package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007
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

	n := nextInt()
	min, c := 1000000, 0
	for i := 0; i < n; i++ {
		p := nextInt()
		if p < min {
			min = p
			c++
		}
	}

	fmt.Println(c)
}