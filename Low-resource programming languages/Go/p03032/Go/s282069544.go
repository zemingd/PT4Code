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

	var n, k int
	fmt.Sscan(getNextLine(scanner), &n, &k)

	vv := getIntList(scanner)
	lsums := make([]int, n+1)
	rsums := make([]int, n+1)
	for i := 0; i < n; i++ {
		lsums[i+1] = lsums[i] + vv[i]
		rsums[i+1] = rsums[i] + vv[n-1-i]
	}
	max := 0
	for l := 0; l <= k && l <= n; l++ {
		for r := 0; l+r <= k && l+r <= n; r++ {
			chosen := make([]int, l+r)
			for i := 0; i < l; i++ {
				chosen[i] = vv[i]
			}
			for i := 0; i < r; i++ {
				chosen[l+i] = vv[n-1-i]
			}
			sort.Sort(sort.IntSlice(chosen))
			v := lsums[l] + rsums[r]
			for i := 0; i < l+r && chosen[i] < 0 && i+l+r <= k; i++ {
				v -= chosen[i]
			}
			if max < v {
				max = v
			}
		}
	}
	fmt.Fprintln(writer, max)

	writer.Flush()
}
