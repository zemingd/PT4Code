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

	m := 0
	n := ((len(S) - 1) / 2) - 1
	first := false
	for i := 0; i < len(S)/4; i++ {
		if S[m] != S[n] {
			fmt.Println("No")
			return
		}
		m++
		n--
		first = true
	}
	m = ((len(S) + 3) / 2) - 1
	n = len(S) - 1
	second := false
	for i := 0; i < len(S)/4; i++ {
		if S[m] != S[n] {
			fmt.Println("No")
			return
		}
		m++
		n--
		second = false
	}
	if first && second {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
