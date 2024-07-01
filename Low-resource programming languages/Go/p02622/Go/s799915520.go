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
	T := nextString()

	var counter int
	for i := range S {
		if S[i] != T[i] {
			counter++
		}
	}
	fmt.Println(counter)
}
