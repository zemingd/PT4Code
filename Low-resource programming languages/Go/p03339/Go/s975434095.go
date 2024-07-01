package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	n := scanLineInt(sc)
	str := scanLineStr(sc)

	result := n
	for i := range str {
		count := diffCount(str[0:i], 'E')
		count += diffCount(str[i+1:n], 'W')
		result = min(result, count)
	}
	fmt.Println(result)
}

func diffCount(str string, char byte) int {
	count := 0
	for i := range str {
		if str[i] != char {
			count++
		}
	}
	return count
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func scanLineStr(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanLineInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
