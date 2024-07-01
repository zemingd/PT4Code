package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"strings"
)

// func main() {
// 	scanner := makeWordScanner()
// 	n := eGetInt(scanner)
// 	ds := make([]int, n)
// 	for i := 0; i < n; i++ {
// 		ds[i] = eGetInt(scanner)
// 	}
// 	sum := 0
// 	for i := 0; i < n; i++ {
// 		for j := i + 1; j < n; j++ {
// 			sum += ds[i] * ds[j]
// 		}
// 	}
// 	fmt.Println(sum)
// }
func main() {
	scanner := makeWordScanner()
	n := eGetInt(scanner)
	sum, square := 0, 0
	for i := 0; i < n; i++ {
		d := eGetInt(scanner)
		sum += d
		square += d * d
	}
	fmt.Println(((sum * sum) - square) / 2)
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
