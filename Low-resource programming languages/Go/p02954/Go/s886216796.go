package main

import (
	"bufio"
	"fmt"
	"os"
	"unicode/utf8"
)

const (
	L = 'L'
	R = 'R'
)

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
	ret := ""
	for i := 0; i < len(counter)-1; i++ {
		ret += fmt.Sprint(counter[i], " ")
	}
	return ret + fmt.Sprint(counter[len(counter)-1])
}
