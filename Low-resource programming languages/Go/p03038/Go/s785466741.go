package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	writer := bufio.NewWriter(os.Stdout)

	var n, m int
	fmt.Sscan(getNextLine(scanner), &n, &m)
	aa := getIntList(scanner)
	sort.Sort(sort.IntSlice(aa))
	sortby := make(SortBy, m)
	for i := 0; i < m; i++ {
		bc := getIntList(scanner)
		sortby[i].b = bc[0]
		sortby[i].c = bc[1]
	}
	sort.Sort(sortby)
	updated := 0
	for i := 0; i < m; i++ {
		for ii := 0; ii < sortby[i].b; ii++ {
			if updated < n || aa[updated] >= sortby[i].c {
				break
			}
			aa[updated] = sortby[i].c
			updated++
		}
	}
	var sum int64

	for i := 0; i < n; i++ {
		sum += int64(aa[i])
	}
	fmt.Fprint(writer, sum)
	writer.Flush()

}

type BC struct {
	b int
	c int
}
type SortBy []BC

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i].c > a[j].c }
