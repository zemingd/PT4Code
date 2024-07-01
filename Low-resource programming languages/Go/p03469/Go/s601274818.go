package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	sc.Scan()
	b := sc.Bytes()

	fmt.Println("2018" + string(b[4:]))
}
