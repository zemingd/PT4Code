package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}

func main() {
	times := []int{nextInt(), nextInt(), nextInt()}
	max := 0
	sum := 0

	for i := 0; i < 3; i++ {
		sum += times[i]

		if max < times[i] {
			max = times[i]
		}
	}

	fmt.Println(sum - max)
}
