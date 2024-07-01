package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	return sc
}()

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func switchTile(r rune) rune {
	if r == '0' {
		return '1'
	}
	return '0'
}

func changeColor(s string) int {
	if len(s) == 1 {
		return 0
	}
	if len(s) == 2 {
		changeNum := 0
		switch s {
		case "00", "11":
			changeNum = 1
		}
		return changeNum
	}

	// 最終結果は2通りなので、
	// その文字列との差を求めればいいだけな気がするが
	// 変換後の文字列も確認したいため
	runes := []rune(s)
	l := len(runes)
	changeNum := 0
	for i := 0; i+3 <= l; i++ {
		readed := string(runes[i : i+3])
		if readed == "010" || readed == "101" {
			continue
		}
		changeNum++
		switch readed {
		case "000", "111":
			runes[i+1] = switchTile(runes[i+1])
		case "100", "011":
			runes[i+2] = switchTile(runes[i+2])
		// case "010", "101":
		case "001", "110":
			runes[i] = switchTile(runes[i])
		}
	}
	return changeNum
}

func countDiff(s, origin string) int {
	diffNum := 0

	or := []rune(origin)
	sr := []rune(s)

	for i := 0; i < len(s); i++ {
		if sr[i] != or[i] {
			diffNum++
		}
	}
	return diffNum
}

func changeColorWithGenStr(s string) int {
	l := len(s)
	s0 := strings.Repeat("10", l/2)
	s1 := strings.Repeat("01", l/2)
	if l%2 == 1 {
		s0 += "1"
		s1 += "0"
	}

	s0n := countDiff(s0, s)
	s1n := countDiff(s1, s)
	if s0n < s1n {
		return s0n
	}
	return s1n
}
func main() {
	s := nextString()
	r := changeColorWithGenStr(s)
	fmt.Println(r)
}
