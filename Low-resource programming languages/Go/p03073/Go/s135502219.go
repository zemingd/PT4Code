package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func nextLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 10000+1024)
	input := nextLine(sc)
	blackCount, whiteCount := 0, 0
	str := strings.Split(input, "")

	for i, s := range str {
		if (i%2 == 0) && (s != "0") {
			blackCount++
		}
		if (i%2 != 0) && (s != "1") {
			blackCount++
		}
	}

	for i, s := range str {
		if (i%2 == 0) && (s != "1") {
			whiteCount++
		}
		if (i%2 != 0) && (s != "0") {
			whiteCount++
		}
	}
	if blackCount <= whiteCount {
		fmt.Println(blackCount)
	} else {
		fmt.Println(whiteCount)
	}
}