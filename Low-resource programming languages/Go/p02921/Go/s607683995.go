package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextString() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	s, t := nextString(), nextString()
	sr := []rune(s)
	tr := []rune(t)

	match := 0
	for i := 0; i < 3; i++ {
		if sr[i] == tr[i] {
			match++
		}
	}
	fmt.Println(match)
}
