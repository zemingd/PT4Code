package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)

	n := nextInt()

	maxIndex := -1
	max := 0
	max2 := 0

	for i := 0; i < n; i++ {
		num := nextInt()

		if num > max {
			max2 = max
			maxIndex = i
			max = num
		} else if num > max2 {
			max2 = num
		}
	}

	for i := 0; i < n; i++ {
		if i == maxIndex {
			fmt.Println(max2)
		} else {
			fmt.Println(max)
		}
	}
}
