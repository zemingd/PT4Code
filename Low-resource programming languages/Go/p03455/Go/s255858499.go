package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	var a, _ = strconv.Atoi(nextLine())
	var b, _ = strconv.Atoi(nextLine())

	if a*b % 2 != 0 {
		fmt.Println("Odd")
	} else {
		fmt.Println("Even")
	}
}