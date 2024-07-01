package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	a, _ := strconv.Atoi(stringLineScan())
	b, _ := strconv.Atoi(stringLineScan())
	c, _ := strconv.Atoi(stringLineScan())
	if a == b && a != c {
		fmt.Println("Yes")
	} else if b == c && b != a {
		fmt.Println("Yes")
	} else if c == a && c != b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}