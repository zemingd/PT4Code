package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func main() {
	sc.Split(bufio.ScanWords)

	s := nextInt()
	w := nextInt()

	if s > w {
		fmt.Println("safe")
	} else {
		fmt.Println("unsafe")
	}
}
