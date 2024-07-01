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

	x := nextInt()
	res := 1
	for i := 2; i < 100; i++ {
		if i * i > x {
			break
		}

		t := i
		for t * i <= x {
			t *= i
		}

		if res < t {
			res = t
		}
	}

	fmt.Println(res)
}