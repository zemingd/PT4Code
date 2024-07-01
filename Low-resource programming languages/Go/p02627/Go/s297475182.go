package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	N := next()

	r := regexp.MustCompile(`[a-z]`)
	r2 := regexp.MustCompile(`[A-Z]`)

	if r.Match([]byte(N)) {
		fmt.Println("a")
	} else if r2.Match([]byte(N)) {
		fmt.Println("A")
	}
}