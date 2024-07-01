package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	bf := make([]byte, 10*1024)
	sc.Buffer(bf, 20*1024)
	sc.Split(bufio.ScanWords)

	sc.Scan()

	s := sc.Text()

	if s[0] >= 'A' && s[0] <= 'Z' {
		fmt.Printf("%c\n", 'A')
	} else if s[0] >= 'a' && s[0] <= 'z' {
		fmt.Printf("%c\n", 'a')
	}
}
