package main

import (
	"bufio"
	"fmt"
	"os"
)

var scanner = bufio.NewScanner(os.Stdin)

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func main() {
	scanner.Split(bufio.ScanWords)
	s := NextStr()

	var res int
	for _, c := range s {
		res += int(c - '0')
	}
	if res%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
