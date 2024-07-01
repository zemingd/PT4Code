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

	choice := 0
	anser := 0
	for i := 0; i < len(S); i++ {
		for j := i + 1; j <= len(S); j++ {
			choice, _ = strconv.Atoi(S[i:j])
			if choice%2019 == 0 {
				anser++
			}
		}
	}
	fmt.Println(anser)
}
