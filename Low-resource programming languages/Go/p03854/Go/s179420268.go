package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	sc.Scan()
	S := sc.Bytes()

	i := 0
	for i < len(S) {
		b, c := confirm(S[i:])
		if !b {
			fmt.Println("NO")
			return
		}

		i += c
	}

	if i >= len(S) {
		fmt.Println("NO")
		return
	}

	fmt.Println("YES")

}

func confirm(b []byte) (bool, int) {
	if has(b, []byte("dream")) {
		if len(b) == 5 {
			return true, 5
		}

		if has(b[5:], []byte("erase")) {
			return true, 5
		}

		if has(b[5:], []byte("er")) {
			return true, 7
		}

		if b[5] == 'd' {
			return true, 5
		}
		return false, 0
	}

	if has(b, []byte("eraser")) {
		return true, 6
	}

	if has(b, []byte("erase")) {
		return true, 5
	}

	return false, -1
}

// b の先頭が t かどうか
func has(b []byte, t []byte) bool {
	if len(b) < len(t) {
		return false
	}

	for i := range t {
		if b[i] != t[i] {
			return false
		}
	}
	return true
}
