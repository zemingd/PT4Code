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

	trees := make([]tree, n+1)
	for i := 0; i < n-1; i++ {
		uvw := getIntList(scanner)
		u := uvw[0]
		v := uvw[1]
		w := uvw[2] % 2

		if trees[v].parent == 0 {
			trees[v].parent = u
			trees[v].w = w
			continue
		}
		if trees[u].parent == 0 {
			trees[u].parent = v
			trees[u].w = w
			continue
		}
		p := trees[v].parent
		trees[p].parent = u
		trees[p].w = w ^ trees[v].w
		trees[v].parent = u
		trees[v].w = w
	}
	for i := 1; i <= n; i++ {
		fmt.Println(chokudai(i, trees))
	}
}

type tree struct {
	parent int
	w      int
}

func chokudai(i int, trees []tree) int {
	if trees[i].parent == 0 {
		return trees[i].w
	}
	w := (trees[i].w + chokudai(trees[i].parent, trees)) % 2
	trees[i].w = w
	trees[i].parent = 0
	return w
}