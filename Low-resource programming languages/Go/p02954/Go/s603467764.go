package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"unicode/utf8"
)

const (
	L = 'L'
	R = 'R'
)

func lib_JoinInt(values []int, sep string) string {
	if len(values) == 0 {
		return ""
	}
	var sb strings.Builder
	for i := 0; i < len(values)-1; i++ {
		sb.WriteString(fmt.Sprint(values[i]))
		sb.WriteString(sep)
	}
	sb.WriteString(fmt.Sprint(values[len(values)-1]))
	return sb.String()
}
func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var S string
	scanner.Scan()
	S = scanner.Text()
	fmt.Println(solve(S))
}
func solve(S string) string {
	s := []rune(S)
	N := utf8.RuneCountInString(S)
	counter := make([]int, N, N)
	finalPlace := func(pos int) int {
		step := 0
		for {
			if s[pos] == R {
				if s[pos+1] == L {
					switch step % 2 {
					case 0:
						return pos
					case 1:
						return pos + 1
					}
				}
				pos++
			} else if s[pos] == L {
				if s[pos-1] == R {
					switch step % 2 {
					case 0:
						return pos
					case 1:
						return pos - 1
					}
				}
				pos--
			}
			step++
		}
	}
	for i := 0; i < N; i++ {
		counter[finalPlace(i)]++
	}
	return lib_JoinInt(counter, " ")
}
