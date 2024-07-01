package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	sc.Scan()
	t := sc.Text()

	r := []rune(t)
	fmt.Printf("2018%s\n", string(r[4:]))
}
