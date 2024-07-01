package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var S string
	r := bufio.NewScanner(os.Stdin)
	b := make([]byte, 1000000)
	r.Buffer(b, 1000000)
	r.Scan()
	S = r.Text()

	var a, z int
	for i := 0; i < len(S); i++ {
		if S[i:i+1] == "A" && a == 0 {
			a = i
		}
		if S[len(S)-1-i:len(S)-i] == "Z" && z == 0 {
			z = len(S) - 1 - i
		}
	}
	fmt.Println(z - a + 1)
}