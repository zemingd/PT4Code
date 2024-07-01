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

func main() {
	scanner := makeWordScanner()
	n := eGetInt(scanner)
	as := make([]int, n+1)
	balls := make([]int, n+1)
	for i := 1; i <= n; i++ {
		as[i] = eGetInt(scanner)
	}
	for i := n; i > 0; i-- {
		a := as[i]
		sum := 0
		for j := n / i * i; j >= i; j = j - i {
			if sum%2 == 0 && a == 1 {
				// ボールを入れる
				balls[j] = 1
			} else if sum%2 == 1 && a == 0 {
				// ボールを入れる
				balls[j] = 1
			}
			sum += balls[j]
		}
	}

	sum := 0
	for _, e := range balls {
		if e == 1 {
			sum++
		}
	}
	fmt.Println(sum)
	if sum > 0 {
		var buf bytes.Buffer
		sep := ""
		for i := 1; i <= n; i++ {
			if balls[i] == 1 {
				buf.WriteString(fmt.Sprintf("%s%d", sep, balls[i]))
				sep = " "
			}
		}
		fmt.Println(buf.String())
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
