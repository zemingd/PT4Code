package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var N int64
	scanner.Scan()
	N, _ = strconv.ParseInt(scanner.Text(), 10, 64)
	var S string
	scanner.Scan()
	S = scanner.Text()
	fmt.Println(solve(N, S))
}
func solve(N int64, S string) int {
	ss := []rune(S)
	cnt := 0
	for i := 0; i < int(N-2); i++ {
		for j := i + 1; j < int(N-1); j++ {
			if ss[i] == ss[j] {
				continue
			}
			remainColors := getRemainColor(ss[i], getColors())
			remainColors = getRemainColor(ss[j], remainColors)
			remainColor := remainColors[0]
			cnt += strings.Count(string(ss[j+1:]), string(remainColor))
			if j+(j-i) < int(N) && ss[j+(j-i)] == remainColor {
				cnt--
			}
		}
	}
	return cnt
}
func getRemainColor(c rune, colors []rune) []rune {
	var newColors []rune
	for _, nc := range colors {
		if c != nc {
			newColors = append(newColors, nc)
		}
	}
	return newColors
}
func getColors() []rune {
	return []rune{'R', 'G', 'B'}
}
func getRemainColor(c rune, colors []rune) []rune {
	var newColors []rune
	for _, nc := range colors {
		if c != nc {
			newColors = append(newColors, nc)
		}
	}
	return newColors
}
