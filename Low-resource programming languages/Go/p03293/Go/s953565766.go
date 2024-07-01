package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()
	sc.Scan()
	t := sc.Text()

	for i := 0; i < len(s); i++ {
		s = s[1:] + s[:1]
		if s == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
