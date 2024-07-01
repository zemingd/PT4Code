package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	str := sc.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	a, s := nextInt(), nextWord()
	ans := isRed(a, s)
	fmt.Println(ans)
}

func isRed(a int, s string) string {
	result := s
	if a < 3200 {
		result = "red"
	}
	return result
}
