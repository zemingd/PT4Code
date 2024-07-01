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

	s := getNextLine(scanner)

	var k int

	sorted := make(SortBy, len(s))
	for i, l := 0, len(s); i < l; i++ {
		sorted[i].i = i
		sorted[i].s = s[i:]
	}
	sort.Sort(sorted)
	fmt.Sscan(getNextLine(scanner), &k)
	exists := make(map[string]int)

	for i, l := 0, len(s); i < l; i++ {
		for ii, ll := 1, len(sorted[i].s); ii <= ll; ii++ {
			if _, ok := exists[sorted[i].s[0:ii]]; ok {
				continue
			}
			exists[sorted[i].s[0:ii]] = 1
			k--
			if k <= 0 {
				fmt.Fprintln(writer, sorted[i].s[0:ii])
				writer.Flush()
				return
			}
		}
	}

}

type List struct {
	i int
	s string
}

type SortBy []List

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i].s < a[j].s }
