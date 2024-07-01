package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	stdin      = bufio.NewScanner(os.Stdin)
	stdinIndex = -1
)

func main() {
	s := nextStr()
	n := len(s)
	cnt := n

	for i := 0; i < n && rune(s[i]) != 'A'; i++ {
		cnt--
	}
	for i := n - 1; i >= 0 && rune(s[i]) != 'Z'; i-- {
		cnt--
	}

	fmt.Println(cnt)
}

func nextInt() int {
	result, _ := strconv.Atoi(nextStr())
	return result
}

func nextStr() string {
	result := ""
	for {
		if stdinIndex == -1 {
			stdin.Scan()
		}
		stdinIndex++
		if stdinIndex >= len(stdin.Text()) {
			stdinIndex = -1
			break
		}
		tmp := string(stdin.Text()[stdinIndex])
		if strings.TrimSpace(tmp) != "" {
			result += tmp
		} else {
			break
		}
	}
	return result
}
