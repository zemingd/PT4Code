package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	s, t := nextWord(), nextWord()
	ans := solve(s, t)
	fmt.Println(ans)
}

func solve(s, t string) int {
	for _, tc := range t {
		if !strings.Contains(s, string(tc)) {
			return -1
			break
		}
	}
	i := 0
	sc := rune(s[0])
	for _, tc := range t {
		for ; tc != sc; i++ {
			sc = rune(s[i%len(s)])
		}
	}
	return i
}
