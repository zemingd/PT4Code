// https://atcoder.jp/contests/abc141/tasks/abc141_e

package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"reflect"
	"runtime"
	"sort"
	"strconv"
	"strings"
)

// O(|s|)
func zAlgorithm(s string) []int {
	n := len(s)
	z := make([]int, n)
	z[0] = n
	for i, j := 1, 0; i < n; {
		for i+j < n && s[j:j+1] == s[i+j:i+j+1] {
			j++
		}

		z[i] = j

		if j == 0 {
			i++
			continue
		}

		k := 1

		for ; i+k < n && k+z[k] < j; k++ {
			z[i+k] = z[k]
		}

		i, j = i+k, j-k
	}
	return z
}

func getPatternIndices(s, pat string, appendix int) (res []int) {
	arg := pat + s
	z := zAlgorithm(arg)
	ls := len(s)
	lp := len(pat)

	for i := 0; i < ls; i++ {
		if z[lp+i] >= lp {
			res = append(res, i+appendix)
		}
	}

	return
}

// d: debug IO. it can print debug in test.
func solve(io *Io, d *Io) {
	N := io.NextInt()
	S := io.NextRunes()

	// key: start index, value: target indices
	maxIndicesMap := map[int][]int{}

	// len >= 1
	lengthExist := func(l int) bool {
		if len(maxIndicesMap) > 0 {
			found := false

			for i, targets := range maxIndicesMap {
				for _, t := range targets {
					if t+l <= N && string(S[i:i+l]) == string(S[t:t+l]) {
						found = true
					}
				}
			}

			if found {
				for i, targets := range maxIndicesMap {
					for j := len(targets) - 1; j >= 0; j-- {
						t := targets[j]

						if t+l > N || string(S[i:i+l]) != string(S[t:t+l]) {
							// remove
							maxIndicesMap[i][len(maxIndicesMap[i])-1], maxIndicesMap[i][j] = maxIndicesMap[i][j], maxIndicesMap[i][len(maxIndicesMap[i])-1]
							maxIndicesMap[i] = maxIndicesMap[i][:len(maxIndicesMap[i])-1]
						}
					}
				}
			}

			return found
		} else {
			found := false

			for i := 0; (N - (i - 1)) >= 2*l; i++ {
				pattern := string(S[i : i+l])
				rest := string(S[i+l:])

				pats := getPatternIndices(rest, pattern, i+l)

				if len(pats) > 0 {
					found = true
				}
			}

			if found {
				for i := 0; (N - (i - 1)) >= 2*l; i++ {
					pattern := string(S[i : i+l])
					rest := string(S[i+l:])

					pats := getPatternIndices(rest, pattern, i+l)

					if len(pats) > 100 {
						maxIndicesMap = map[int][]int{}
						return found
					}

					if len(pats) > 0 {
						maxIndicesMap[i] = pats
					}
				}
			}

			return found
		}
	}

	if !lengthExist(1) {
		io.Println(0)
		return
	}

	// [l, r) にある。 mid が満たしたら l にする

	l := 1
	r := N/2 + 1
	for r-l > 1 {
		mid := (l + r) / 2

		if lengthExist(mid) {
			l = mid
		} else {
			r = mid
		}
	}

	io.Println(l)
}

func main() {
	io := NewIo()
	defer io.Flush()
	solve(io, nil)
}

/* IO Helpers */

// Io combines reader, writer, & tokens as the state when processing the input
type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

// NewIo creates Io with Stdin & Stdout
func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

// Flush calls the writer's Flush
func (io *Io) Flush() {
	io.writer.Flush()
}

// NextLine returns the string from reader.ReadLine()
func (io *Io) NextLine() string {
	if io.nextToken < len(io.tokens) {
		panic("io.nextToken < len(io.tokens)")
	}

	var buffer bytes.Buffer

	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer.Write(line)
		if !isPrefix {
			break
		}
	}

	return buffer.String()
}

// NextLines returns []string from next n lines
func (io *Io) NextLines(n int) []string {
	res := make([]string, n)
	for i := 0; i < n; i++ {
		res[i] = io.NextLine()
	}
	return res
}

// Next returns the string token (partial string of the line divided by spaces)
func (io *Io) Next() string {
	if io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}

	res := io.tokens[io.nextToken]
	io.nextToken++
	return res
}

// NextStrings returns the []string from the next n tokens
func (io *Io) NextStrings(n int) []string {
	res := make([]string, n)
	for i := 0; i < n; i++ {
		res[i] = io.Next()
	}
	return res
}

// NextRunes returns next string as []rune
func (io *Io) NextRunes() []rune {
	return []rune(io.Next())
}

// NextInt returns the int from the next token
func (io *Io) NextInt() int {
	res, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return res
}

// NextInts returns the []int from the next n tokens
func (io *Io) NextInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = io.NextInt()
	}
	return res
}

// NextFloat returns the float64 from the next token
func (io *Io) NextFloat() float64 {
	res, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return res
}

// NextFloats returns the []float64 from the next n tokens
func (io *Io) NextFloats(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = io.NextFloat()
	}
	return res
}

// Println prints the input to the writer in an easy-to-see form
func (io *Io) Println(a ...interface{}) {
	var values []string
	for i := 0; i < len(a); i++ {
		values = append(values, "%v")
	}
	io.Printfln(strings.Join(values, " "), a...)
}

// Print calls Fprint to the writer
func (io *Io) Print(a interface{}) {
	fmt.Fprint(io.writer, a)
}

// Printf calls Fprintf to the writer
func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

// Printfln calls Fprint to the writer
func (io *Io) Printfln(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format+"\n", a...)
}

// PrintInts prints ints with space and new line at the end
func (io *Io) PrintInts(ints []int) {
	for i, e := range ints {
		io.Print(e)

		if i == len(ints)-1 {
			io.Println()
		} else {
			io.Print(" ")
		}
	}
}

// Debug calls Println and Flush immediately
func (io *Io) Debug(a ...interface{}) {
	if io == nil {
		return
	}

	io.Println(a...)
	io.Flush()
}

// Assert checks the value equality for debug
func (io *Io) Assert(a, b interface{}) {
	if io == nil {
		return
	}

	if !reflect.DeepEqual(a, b) {
		_, _, line, _ := runtime.Caller(1)
		io.Debug("Diff:", line, "\na:", a, "\nb:", b)
	}
}

/* Math Helpers */

// MOD is 10^9 + 7
const MOD = 1000000007

// Max of the ints
func Max(numbers ...int) int {
	max := numbers[0]
	for i, number := range numbers {
		if i == 0 {
			continue
		}
		if number > max {
			max = number
		}
	}
	return max
}

// Min of the ints
func Min(numbers ...int) int {
	min := numbers[0]
	for i, number := range numbers {
		if i == 0 {
			continue
		}
		if min > number {
			min = number
		}
	}
	return min
}

// Sum of the ints
func Sum(numbers ...int) int {
	sum := 0

	for _, number := range numbers {
		sum += number
	}

	return sum
}

// Pow calculates the pow for int with O(log e)
func Pow(a, e int) int {
	if a < 0 || e < 0 {
		panic(fmt.Sprintf("Pow was called for a < 0 or e < 0, a: %d, e: %d", a, e))
	}

	if e == 0 {
		return 1
	}

	if e%2 == 0 {
		half := Pow(a, e/2)
		return half * half
	}

	return a * Pow(a, e-1)
}

// Abs returns the absolute value of the input
func Abs(a int) int {
	if a < 0 {
		return -a
	}

	return a
}

/* Structure Helpers */

// Set is orderless List
type Set map[interface{}]struct{}

// NewSet returns empty Set
func NewSet() *Set {
	return &Set{}
}

// Add the value to the set
func (set *Set) Add(value interface{}) {
	(*set)[value] = struct{}{}
}

// Includes check the set has the value
func (set *Set) Includes(value interface{}) bool {
	_, included := (*set)[value]
	return included
}

// Remove deletes the value from the set if exists
func (set *Set) Remove(value interface{}) {
	if !set.Includes(value) {
		return
	}

	delete(*set, value)
}

// ImmutableSort returns sorted slice without mutating original one
func ImmutableSort(slice []int) []int {
	res := make([]int, len(slice))
	copy(res, slice)
	sort.Ints(res)
	return res
}

/* Util helpers */

// Ternary is like `cond ? a : b`. should assert the returned value like `Ternary(cond, a, b).(int)`
func Ternary(cond bool, a, b interface{}) interface{} {
	if cond {
		return a
	}

	return b
}

// TernaryInt uses Ternary and assert the value as int
func TernaryInt(cond bool, a, b int) int {
	return Ternary(cond, a, b).(int)
}

// TernaryString uses Ternary and assert the value as string
func TernaryString(cond bool, a, b string) string {
	return Ternary(cond, a, b).(string)
}
