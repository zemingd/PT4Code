package main

import (
	"fmt"
	"strconv"

	// Reader
	"bufio"
	"os"
	"strings"
)

const BUFF_LIMIT = 1000000

func main() {
	var i Input
	i.Init(BUFF_LIMIT) 
	d := i.NextLine()

	townCount, _ := strconv.Atoi(d[0])
	numK, _ := strconv.Atoi(d[1])
	
	tl := i.NextLine()
	lines := make([]int, townCount)
	for n := 0; n < townCount; n++ {
		ti, _ := strconv.Atoi(tl[n])
		lines[n] = ti 
	}

	path, before, loop := parseLines(lines)
	//fmt.Println(path)
	//fmt.Println(before)
	//fmt.Println(loop)
	loopPos := (numK - before) % loop
	townPos := path[before + loopPos]
	//fmt.Println(townPos)

	fmt.Printf("%d \n", townPos + 1)
}

func parseLines(lines []int) ([]int, int, int) {
	var path []int 
	from := 0
	path = append(path, 0)
	for {
		to := lines[from] - 1
		pos := contains(path, to)
		if pos == -1 {
			// 無いとき
			path = append(path, to)
			from = to
			continue
		}

		// ある時 (どこかでloop してる
		beforeCount := pos
		loopCount := len(path) - pos
		return path, beforeCount, loopCount
	}
}

// Checker
func contains(s []int, e int) int {
	for k, v := range s {
		if e == v {
			return k
		}
	}
	return -1
}

// InputReader
type Input struct {
	limit int
	reader *bufio.Reader
}

func (i *Input) Init(l int) {
	i.limit = l
	i.reader = bufio.NewReaderSize(os.Stdin, i.limit)
}

func (i *Input) NextLine() []string {
	return i.parseLine(i.readLine())
}

func (i *Input) readLine() string {
	buf := make([]byte, 0, i.limit)
	for {
		l, p, e := i.reader.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func (i *Input) parseLine(s string) []string {
	slice := strings.Split(s, " ")
	return slice
}
