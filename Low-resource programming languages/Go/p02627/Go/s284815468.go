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

func nextString() string {
	stdInScanner.Scan()
	return stdInScanner.Text()
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	S := nextString()

	if 65 <= S[0] && S[0] <= 90 {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
