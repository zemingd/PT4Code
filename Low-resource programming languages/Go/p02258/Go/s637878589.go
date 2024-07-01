package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	result, err := calc(os.Stdin)
	if err != nil {
		println(err)
		os.Exit(1)
	}
	println(result)
}

func calc(reader io.Reader) (string, error) {
	scanner := bufio.NewScanner(reader)
	var min int64
	var diff int64

	scanner.Scan()
	count, err := strconv.ParseInt(scanner.Text(), 10, 8)
	if err != nil {
		return "", fmt.Errorf("error: %v", err)
	}

	var i int64
	for ; i < count; i++ {
		scanner.Scan()
		price, err := strconv.ParseInt(scanner.Text(), 10, 64)
		if err != nil {
			return "", fmt.Errorf("error: %v", err)
		}

		if min == 0 && diff == 0 {
			min = price
			diff = diff - price
			continue
		}

		newDiff := price - min
		if newDiff > diff {
			diff = newDiff
		}
		if price < min {
			min = price
		}
	}
	return strconv.FormatInt(diff, 10), nil
}

