package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Chokudai is struct
type Chokudai struct {
	scanner *bufio.Reader
}

func (chokudai *Chokudai) getNextLine() string {
	var buffer string
	for {
		line, isPrefix, _ := chokudai.scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func (chokudai *Chokudai) getIntList() []int {
	list := strings.Split(chokudai.getNextLine(), " ")
	l := len(list)
	result := make([]int, l)
	for i := 0; i < l; i++ {
		result[i], _ = strconv.Atoi(list[i])
	}
	return result
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	chokudai := Chokudai{bufio.NewReader(fp)}

	nk := chokudai.getIntList()
	n := nk[0]
	k := nk[1]
	s := chokudai.getNextLine()
	var prev byte
	prev = '1'
	var switched []int
	switched = append(switched, 0)
	for i := 0; i < n; i++ {
		if prev != s[i] {
			switched = append(switched, i)
			prev = s[i]
		}
	}
	switched = append(switched, n)
	max := 0
	l := len(switched)
	for i := 0; i < l-1; i += 2 {
		last := l - 1
		if i+2*k+1 <= l-1 {
			last = i + 2*k + 1
		}
		if max < switched[last]-(switched[i]) {
			max = switched[last] - (switched[i])
		}
	}
	fmt.Println(max)
}
