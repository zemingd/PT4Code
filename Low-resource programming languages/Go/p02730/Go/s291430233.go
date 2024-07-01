package main

import (
	"bufio"
	"fmt"
	"os"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextString() string {
	stdInScanner.Scan()
	return stdInScanner.Text()
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	S := nextString()

	for i := 0; i < len(S)/4; i++ {
		if S[i] != S[len(S)/2-i-1] {
			fmt.Println("No")
			return
		}
	}
	for i := len(S)/2 - 1; i < len(S); i++ {
		if S[i] != S[len(S)-i-1] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
