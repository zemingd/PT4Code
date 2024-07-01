package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	return s
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()
	var count int
	var stack []string
	for _, r := range s {
		cube := string([]rune{r})
		if len(stack) == 0 {
			stack = append(stack, cube)
		} else if stack[len(stack)-1] != cube {
			count += 2
			stack = stack[:len(stack)-1]
		} else {
			stack = append(stack, cube)
		}
	}
	fmt.Println(count)
}
