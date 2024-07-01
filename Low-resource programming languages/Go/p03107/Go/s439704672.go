package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var S string
	var r int
	s := bufio.NewScanner(os.Stdin)
	b := make([]byte, 1000000)
	s.Buffer(b, 1000000)
	s.Scan()
	S = s.Text()
	for i := 0; i < len(S)-1; i++ {
		if S[i:i+1] != S[i+1:i+2] {
			S = S[:i] + S[i+2:]
			i = i - 2
			r += 2
		}
		if i < -1 {
			i = -1
		}
	}
	fmt.Println(r)
}