package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	start, end := -1, -1
	s := readString()
	for i := 0; i < len(s); i++ {
		switch string(s[i]) {
		case "A":
			if start == -1 {
				start = i
			}
		case "Z":
			end = i
		}
	}
	fmt.Println(end - start + 1)
}
