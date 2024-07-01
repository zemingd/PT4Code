package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	s := scanLine(scanner)
	n := len(s)

	wEvenCount, bEvenCount, wOddCount, bOddCount := int64(0), int64(0), int64(0), int64(0)
	for i := 0; i < n; i++ {
		if i % 2 == 0 {
			if s[i] == '0' {
				bEvenCount++
			} else {
				wEvenCount++
			}
		} else {
			if s[i] == '0' {
				bOddCount++
			} else {
				wOddCount++
			}
		}
	}

	var changeNum int64
	if bEvenCount + wOddCount < wEvenCount + bOddCount {
		changeNum = bEvenCount + wOddCount
	} else {
		changeNum = wEvenCount + bOddCount
	}

	fmt.Print(changeNum);
}


func scanLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}