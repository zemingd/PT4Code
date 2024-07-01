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

	ret := a + b

	if ret < (a - b) {
		ret = a - b
	}
	if ret < (a * b) {
		ret = a * b
	}

	fmt.Println(ret)
}
