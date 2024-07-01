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
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	A, B := nextInt(), nextInt()

	sum := 0
	for _, v := range [3]int{1, 2, 3} {
		sum += v
	}
	fmt.Println(sum - A - B)
}
