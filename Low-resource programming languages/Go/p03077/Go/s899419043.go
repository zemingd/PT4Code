package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() int64 {
	sc.Scan()
	data, _ := strconv.ParseInt(sc.Text(), 10, 64)
	return data
}

func main() {
	n := nextLine()
	args := []int64{nextLine(), nextLine(), nextLine(), nextLine(), nextLine()}

	min := int64(0)

	for _, arg := range args {
		if min == 0 || min > arg {
			min = arg
		}
	}

	time := int64(n/min) + 5

	fmt.Print(time)
}