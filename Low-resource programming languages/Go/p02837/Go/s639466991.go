package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

type pair struct{ x, y int }

func countOnBits(i, numbits int) int {
	count := 0
	for bit := 0; bit < numbits; bit++ {
		t := 1 << bit
		if i&t > 0 {
			count++
		}
	}
	return count
}

func solve(ns [][]pair) {
	n := len(ns)
	max := 0
	for pat := 0; pat < pow(2, n); pat++ {
		// パターン単位
		// eg: 000,001,010,...,111
		fine := true
		for i := 0; i < n; i++ {
			// 人間単位
			a := ns[i]
			isHonesty := pat&(1<<i) > 0
			for _, e := range a {
				// 証言単位

				// だれのこと？
				who := e.x
				// 正直 or 嘘つき?
				actual := e.y == 1

				// パターンでの定義は?
				expected := pat&(1<<who) > 0
				isOk := (actual == expected && isHonesty) || (actual != expected && !isHonesty)
				if !isOk {
					// fmt.Println(pat, i, isHonesty, who, expected, "=", actual)
					// 矛盾がある.
					fine = false
					goto Exit
				}
			}
		}
	Exit:
		if fine {
			onbits := countOnBits(pat, n)
			if onbits > max {
				max = onbits
			}
		}
	}
	fmt.Println(max)
}

func main() {
	scanner := makeWordScanner()
	n := eGetInt(scanner)
	ns := make([][]pair, n)
	for i := 0; i < n; i++ {
		a := eGetInt(scanner)
		ns[i] = make([]pair, a)
		for j := 0; j < a; j++ {
			x := eGetInt(scanner)
			y := eGetInt(scanner)
			ns[i][j] = pair{x - 1, y}
		}
	}
	solve(ns)
}

////////////////////////////////////////////////////////////////////////////////
// ライブラリ
////////////////////////////////////////////////////////////////////////////////
func makeScanner(maxByte int) *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]uint8, 0, 8192), maxByte)
	return scanner
}
func makeCharScanner() *bufio.Scanner {
	scanner := makeScanner(8192)
	scanner.Split(bufio.ScanRunes)
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
func pow(a, n int) int {
	return int(math.Pow(float64(a), float64(n)))
}
