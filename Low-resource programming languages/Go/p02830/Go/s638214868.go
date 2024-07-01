package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	nextLine()
	st := strings.Split(nextLine(), " ")
	for k, _ := range(st[0]) {
		fmt.Printf("%c", st[0][k])
		fmt.Printf("%c", st[1][k])
	}
}
