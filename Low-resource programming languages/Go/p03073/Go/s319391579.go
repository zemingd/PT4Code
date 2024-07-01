package main

import (
	"bufio"
	"fmt"
	"os"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 100000)
	sc.Buffer(buf, 100000+1024)
	sc.Split(bufio.ScanWords)
	input := readLine(sc)

	blackCount, whiteCount := 0, 0

	for i := 0; i < len(input); i++ {
		if i%2 == 0 {
			if input[i] == '0' {
				whiteCount++
			} else {
				blackCount++
			}
		} else {
			if input[i] == '0' {
				blackCount++
			} else {
				whiteCount++
			}
		}
	}
	if blackCount <= whiteCount {
		fmt.Println(blackCount)
	} else {
		fmt.Println(whiteCount)
	}
}
