package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
	"sync"
)

func main() {
    s, w := ScanInt(), ScanInt()
    if w>= s {
    	P("unsafe")
	} else {
		P("safe")
	}

	close(O)
	oWg.Wait()
}

/*********************** I/O ***********************/

var O chan string
var in *bufio.Scanner
var oWg *sync.WaitGroup
var P func(a ...interface{}) (n int, err error)

func init() {
	P = fmt.Println

	in = bufio.NewScanner(os.Stdin)
	in.Buffer(make([]byte, 1024), int(1e+9))
	in.Split(bufio.ScanWords)

	O = make(chan string, 16)
	oWg = &sync.WaitGroup{}
	oWg.Add(1)

	writer := bufio.NewWriter(os.Stdout)
	go func() {
		defer oWg.Done()
		defer writer.Flush()

		for line := range O {
			writer.WriteString(line + "\n")
		}
	}()
}

func ScanWord() string {in.Scan(); return in.Text() }
func ScanInt() int {i, _ := strconv.Atoi(ScanWord()); return i}
func ScanInt64() int64 {i, _ := strconv.ParseInt(ScanWord(), 10, 64); return i}
func ScanStringSlice(n int) []string {s := make([]string, n); for i := 0; i < n; i++ {s[i] = ScanWord()}; return s}
func ScanIntSlice(n int) []int {arr := make([]int, n); for i := 0; i < n; i++ {arr[i] = ScanInt()}; return arr}
func ScanInt64Slice(n int) []int64 {arr := make([]int64, n); for i := 0; i < n; i++ {arr[i] = ScanInt64()}; return arr}

/*********************** Utils ***********************/

func S(v interface{}) string {return fmt.Sprintf("%v", v)}
func SArr(a []int) string {sb := strings.Builder{}; sb.Grow(len(a) * 9); for i := range a {sb.WriteString(strconv.Itoa(a[i]) + " ")}; return sb.String()}
func SArr64(a []int64) string {sb := strings.Builder{}; sb.Grow(len(a) * 9); for i := range a {sb.WriteString(strconv.FormatInt(a[i], 10) + " ")}; return sb.String()}
func MnMx(args ...int64) (int64, int64) {minVal, maxVal := int64(math.MaxInt64), int64(math.MinInt64); for _, v := range args {if v < minVal {minVal = v}; if v > maxVal {maxVal = v}}; return minVal, maxVal}
func Mn(args ...int64) int64 { mn, _ := MnMx(args...); return mn }
func Mx(args ...int64) int64 { _, mx := MnMx(args...); return mx }
func LCM(a, b int64) int64 {return a / GCD(a, b) * b}
func GCD(a, b int64) int64 {if (a == 0) {return b}; return GCD(b%a, a)}
func sortInt64Slice(a []int64) {sort.Slice(a, func(i, j int) bool { return a[i] < a[j] })}
func abs(x int64) int64 {if x < 0 {return -x}; return x}
