package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
)

var (
	idMatch = regexp.MustCompile(`^[a-z]+$`)
)

func registration(s, t string) string {
	if !idMatch.MatchString(s) || !idMatch.MatchString(t) {
		return "No"
	}
	if len(s) < 1 || len(s) > 10 {
		return "No"
	}
	if len(t) < 1 || len(t) > 10 {
		return "No"
	}
	if len(t) != len(s)+1 {
		return "No"
	}
	if s != string([]rune(t)[:len(t)-1]) {
		return "No"
	}
	return "Yes"
}

func main() {
	const MaxBuf = 200100
	var sc = bufio.NewScanner(os.Stdin)
	var buf []byte = make([]byte, MaxBuf)
	sc.Buffer(buf, MaxBuf)
	sc.Scan()
	s := sc.Text()
	input := strings.Split(s, " ")
	r := registration(input[0], input[1])
	fmt.Println(r)
}