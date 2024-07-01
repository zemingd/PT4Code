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
	n, _ := strconv.Atoi(stringLineScan())
	k, _ := strconv.Atoi(stringLineScan())
	x := 1
	for i := 1; ; i++ {
		x *= k
		if n < x-1 {
			fmt.Println(i)
			break
		}
	}
}
