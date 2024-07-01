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

	if s == t {
		fmt.Println(0)
		return
	}

	byteOfS := []byte(s)
	byteOfT := []byte(t)

	count := 0
	for i := range byteOfS {
		if byteOfS[i] != byteOfT[i] {
			count++
		}
	}

	fmt.Println(count)
}
