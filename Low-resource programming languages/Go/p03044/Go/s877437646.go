package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getNextLine(scanner *bufio.Reader) string {
	var buffer string
	for {
		line, isPrefix, _ := scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func getIntList(scanner *bufio.Reader) []int {
	list := strings.Split(getNextLine(scanner), " ")
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

	scanner := bufio.NewReader(fp)

	var n int
	fmt.Sscan(getNextLine(scanner), &n)

	trees := make([]tree, n)
	for i := 0; i < n-1; i++ {
		uvw := getIntList(scanner)
		u := uvw[0] - 1
		v := uvw[1] - 1
		w := uvw[2] % 2

		if trees[v].parent == 0 {
			trees[v].parent = u
			trees[v].w = w
			continue
		}
		p := trees[v].parent
		trees[u].w = w ^ trees[v].w
		if p < u {
			trees[u].parent = p
			continue
		}
		trees[p].parent = u
	}
	for i := 0; i < n; i++ {
		w := trees[i].w
		t := trees[i]
		for t.parent != 0 {
			t = trees[t.parent]
			w = w ^ t.w
		}
		fmt.Println(w)
	}
}

type tree struct {
	parent int
	w      int
}
