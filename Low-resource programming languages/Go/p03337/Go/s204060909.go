package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	a, _ := strconv.Atoi(read())
	b, _ := strconv.Atoi(read())

	add := a + b
	sub := a - b
	mul := a * b

	ret := add
	if ret < sub {
		ret = sub
	}
	if ret < mul {
		ret = mul
	}

	fmt.Println(ret)
}
