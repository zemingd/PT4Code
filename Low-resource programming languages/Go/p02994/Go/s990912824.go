package main

import (
	"bufio"
	"bytes"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

func abs(n int) int {
	if n >= 0 {
		return n
	}
	return -1 * n
}

func main() {
	scanner := makeScanner(1024)
	nl := eGetInts(scanner)
	n, l := nl[0], nl[1]

	agi := make([]int, n)
	total := 0
	for i := range agi {
		agi[i] = l + i + 1 - 1
		total += agi[i]
	}
	mindiff := 10000
	mini := -1
	for i := range agi {
		diff := total - agi[i]
		if abs(total-diff) < mindiff {
			mindiff = abs(total - diff)
			mini = i
		}
	}
	total = 0
	for i := range agi {
		agi[i] = l + i + 1 - 1
		if i != mini {
			total += agi[i]
		}
	}
	fmt.Println(total)
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

type ints []int

func (s ints) String() string {
	var buf bytes.Buffer
	buf.WriteString("[")
	sep := ""
	for _, v := range s {
		buf.WriteString(fmt.Sprintf("%s%d", sep, v))
		sep = ", "
	}
	buf.WriteString("]")
	return buf.String()
}

func reverse(a ints) ints {
	r := make(ints, len(a))
	for i := 0; i < len(a); i++ {
		r[i] = a[len(a)-1-i]
	}
	return r
}
func max(a ints) (int, bool) {
	if len(a) == 0 {
		return 0, false
	}
	m := a[0]
	for _, e := range a {
		if e > m {
			m = e
		}
	}
	return m, true
}

// func min(a []int) int {
// 	m := a[0]
// 	for _, v := range a {
// 		if v < m {
// 			m = v
// 		}
// 	}
// 	return m
// }

func sum(a ints) int {
	if len(a) == 0 {
		return 0
	}
	sum := 0
	for _, e := range a {
		sum += e
	}
	return sum
}
func find(n int, a ints) int {
	for i, v := range a {
		if n == v {
			return i
		}
	}
	return -1
}
