package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func nextInt64() int64 {
	stdInScanner.Scan()
	i, _ := strconv.ParseInt(stdInScanner.Text(), 10, 64)
	return i
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt64()

	answer := int64(0)
	for i := int64(1); i <= N; i++ {
		if i%3 == 0 && i%5 == 0 {
			continue
		} else if i%3 == 0 {
			continue
		} else if i%5 == 0 {
			continue
		} else {
			answer += i
		}
	}

	fmt.Println(answer)
}
