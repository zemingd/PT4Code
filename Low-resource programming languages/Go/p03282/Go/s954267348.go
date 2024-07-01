package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	var s string
	if scanner.Scan() {
		s = scanner.Text()
	}

	var k int64
	if scanner.Scan() {
		tmp := scanner.Text()
		k, _ = strconv.ParseInt(tmp, 10, 64)
	}

	for i, c := range s {
		switch c {
		case '1':
			if int64(i) == k-1 {
				fmt.Println(1)
				return
			} else {
				continue
			}
		default:
			fmt.Println(string(c))
			return
		}
	}
}