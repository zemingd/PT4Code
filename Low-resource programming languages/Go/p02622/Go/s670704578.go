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

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := input()
	t := input()

	len := len(s)
	res := 0
	
	for i := 0; i < len; i++ {
		if s[i] != t[i] {
			res++
		}
	}

	fmt.Println(res)
}
