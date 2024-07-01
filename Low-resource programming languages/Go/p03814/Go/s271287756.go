package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	a, z := -1, -1
	s := readString()
	for i := 0; i < len(s); i++ {
		if string(s[i]) == "A" {
			a = i
			break
		}
	}
	for i := len(s) - 1; i >= 0; i-- {
		if string(s[i]) == "Z" {
			z = i
			break
		}
	}
	fmt.Println(z - a + 1)
}
