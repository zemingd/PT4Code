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

func min(a, b int64) int64 {
	if a <= b {
		return a
	}
	return b
}

func count(str string, runes ...rune) int64 {
	cnt := int64(0)
	index := 0
	for _, s := range str {
		if s != runes[index] {
			cnt++
		}
		index = (index + 1) % len(runes)
	}
	return cnt
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 100000+1024)
	line := readLine(sc)

	fmt.Println(min(count(line, '0', '1'), count(line, '1', '0')))
}
