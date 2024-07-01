package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
	"strings"
)

type pair struct {
	num, val int
}
type byval []pair

func (p byval) Len() int           { return len(p) }
func (p byval) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }
func (p byval) Less(i, j int) bool { return p[i].val < p[j].val }

func main() {
	scanner := makeWordScanner()
	n := eGetInt(scanner)
	pairs := make([]pair, n)
	for i := 0; i < n; i++ {
		a := eGetInt(scanner)
		pairs[i] = pair{i, a}
	}
	sort.Sort(byval(pairs))
	m := make(map[int]int, n)
	for i := 0; i < n; i++ {
		m[i] = pairs[i].num
	}
	for i := 0; i < n; i++ {
		rank := m[i]
		if rank != n-1 {
			fmt.Println(pairs[n-1].val)
		} else {
			fmt.Println(pairs[n-2].val)
		}
	}
}

////////////////////////////////////////////////////////////////////////////////
// ライブラリ
////////////////////////////////////////////////////////////////////////////////
func makeScanner(maxByte int) *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]uint8, 0, 8192), maxByte)
	return scanner
}
func makeWordScanner() *bufio.Scanner {
	scanner := makeScanner(8192)
	scanner.Split(bufio.ScanWords)
	return scanner
}
func eGetLine(r *bufio.Scanner) string {
	if r.Scan() {
		return r.Text()
	}
	err := r.Err()
	if err != nil {
		log.Fatal(err)
	}
	// EOF
	return ""
}
func eGetInt(r *bufio.Scanner) int {
	line := eGetLine(r)
	return eAtoi(line)
}
func eGetInt64(r *bufio.Scanner) int64 {
	line := eGetLine(r)
	return eAtoInt64(line)
}
func eGetFields(r *bufio.Scanner) []string {
	line := eGetLine(r)
	return strings.Fields(line)
}
func eGetInts(r *bufio.Scanner) []int {
	fields := eGetFields(r)
	ints := make([]int, len(fields))
	for i := 0; i < len(ints); i++ {
		ints[i] = eAtoi(fields[i])
	}
	return ints
}
func eGetInt64s(r *bufio.Scanner) []int64 {
	fields := eGetFields(r)
	ints := make([]int64, len(fields))
	for i := 0; i < len(ints); i++ {
		ints[i] = eAtoInt64(fields[i])
	}
	return ints
}
func eGetChars(r *bufio.Scanner) []string {
	line := eGetLine(r)
	return strings.Split(line, "")
}
func eAtoi(s string) int {
	n, err := strconv.Atoi(s)
	if err != nil {
		log.Fatal(err)
	}
	return n
}
func eAtoInt64(s string) int64 {
	n, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		log.Fatal(err)
	}
	return n
}
