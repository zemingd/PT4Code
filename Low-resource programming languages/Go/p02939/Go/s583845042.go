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
	s := nextWord()
	ans := solve(s)
	fmt.Println(ans)
}

func solve(s string) int {
	ans := 1
	skip := false
	for i := 1; i < len(s); i++ {
		if skip {
			skip = false
		} else {
			if s[i] == s[i-1] {
				skip = true
			}
			ans++
		}
	}
	return ans
}
