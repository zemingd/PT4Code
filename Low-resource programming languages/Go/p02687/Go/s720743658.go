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

func main() {
	scanner := makeWordScanner()
	s := eGetLine(scanner)
	if s == "ABC" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}

////////////////////////////////////////////////////////////////////////////////
// ライブラリ
////////////////////////////////////////////////////////////////////////////////
const (
	TooLarge = math.MaxInt64
	TooSmall = math.MinInt64
)

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
	if n == 0 {
		return 1
	}
	if n == 1 {
		return a
	}
	if n%2 == 1 {
		return pow((a*a), n/2) * a
	}
	return pow((a * a), n/2)
}
func powMod(a, n, mod int) int {
	if n == 0 {
		return 1 % mod
	}
	if n == 1 {
		return a % mod
	}
	if n%2 == 1 {
		return powMod((a*a)%mod, n/2, mod) * a % mod
	}
	return powMod((a*a)%mod, n/2, mod)
}

func factoricalMod(n, count, mod int) int {
	if count == 1 {
		return n % mod
	}
	return (n % mod) * (factoricalMod(n-1, count-1, mod)) % mod
}

func combinationMod(n, a, mod int) int {
	x := factoricalMod(n, a, mod)
	y := factoricalMod(a, a, mod)
	y = powMod(y, mod-2, mod)
	return ((x % mod) * (y % mod)) % mod
}
func countBitOfOn(i, numbits int) int {
	count := 0
	var bit uint64
	for bit = 0; bit < uint64(numbits); bit++ {
		t := 1 << bit
		if i&t > 0 {
			count++
		}
	}
	return count
}

type ints []int

func ToString(slice []int) string {
	format := fmt.Sprint(slice)
	return fmt.Sprint(format[1 : len(format)-1])
}

type String string

func (s String) revese() string {
	b := []byte(s)
	for i := 0; i < len(b)/2; i++ {
		b[i], b[len(b)-1-i] = b[len(b)-1-i], b[i]
	}
	return string(b)
}
