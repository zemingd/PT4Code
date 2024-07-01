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
	S := sc.Text()

	if S == "ABC" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}

}
