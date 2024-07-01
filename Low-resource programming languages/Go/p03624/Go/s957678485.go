package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	s := sc.Text()
	f := make([]bool, 26)
	for _, c := range s {
		f[c-97] = true
	}
	for i, e := range f {
		if !e {
			fmt.Println(string(i + 97))
			return
		}
	}
	fmt.Println("None")
	return
}
