package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

var (
	stdin      = bufio.NewReader(os.Stdin)
	line       string
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
			line0, err := stdin.ReadBytes('\n')
			if err != nil && err != io.EOF {
				fmt.Printf("Reader error: %q\n", err)
			}
			line = string(line0)
		}
		stdinIndex++
		if stdinIndex >= len(line) {
			stdinIndex = -1
			break
		}
		tmp := string(line[stdinIndex])
		if strings.TrimSpace(tmp) != "" {
			result += tmp
		} else {
			break
		}
	}
	return result
}
