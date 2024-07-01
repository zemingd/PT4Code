package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	s := input()
	ans := min(strings.Count(s, "0"), strings.Count(s, "1")) * 2
	fmt.Println(ans)
}
