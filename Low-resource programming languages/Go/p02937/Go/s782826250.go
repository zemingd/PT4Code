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

func solve(s, t string) int64 {
	for _, tc := range t {
		if !strings.Contains(s, string(tc)) {
			return -1
			break
		}
	}
	i := int64(0)
	seq := s
	for _, tc := range t {
		index := strings.Index(seq, string(tc)) + 1
		if index == 0 {
			index = strings.Index(s, string(tc)) + 1
			i += int64(index + len(seq))
			seq = s
		} else {
			i += int64(index)
		}
		seq = seq[index:len(seq)]
	}
	return i
}
