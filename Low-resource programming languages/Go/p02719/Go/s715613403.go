package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func Powerset1(nums []int) [][]int {
	if len(nums) == 0 {
		return [][]int{ []int{} }
	}

	length := int(math.Pow(2, float64(len(nums))))
	result := make([][]int, length)

	for i := 0; i < length; i++ {
		bi := i
		s := []int{}
		for _, n := range nums {
			if bi % 2 != 0 {
				s = append(s, n)
			}
			bi = bi / 2

		}
		result[i] = s
	}

	return result
}



func Combination1(nums []int, n int) [][]int {
	ps := Powerset2(nums)
	result := make([][]int, CombinationCount(len(nums), n))
	index := 0
	for _, s := range ps {
		if len(s) == n {
			result[index] = s
			index++
		}
	}
	return result
}


func CombinationCount(n, m int) int {
	return Fact(n) / (Fact(n-m) * Fact(m))
}

func Fact(n int) int {
	if n == 0 {
		return 1
	} else {
		return n * Fact(n-1)
	}
}
func Powerset2(nums []int) [][]int {
	length := int(math.Pow(2, float64(len(nums))))
	result := make([][]int, length)

	index := 0
	result[index] = []int{}
	index++

	for _, n := range nums {
		max := index
		for i := 0; i < max; i++ {
			result[index] = copyAndAppend(result[i], n)
			index++
		}
	}

	return result
}

func copyAndAppend(nums []int, n int) []int {
	dst := make([]int, len(nums)+1)
	copy(dst, nums)
	dst[len(nums)] = n
	return dst
}

var initial int
var resultArray []int
var count = 0
func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	initial = abs(n - k)
	getMinimum(initial, k)
	result := min(resultArray...)
	fmt.Println(result)
}

func getMinimum(n, k int){
	result := abs(n - k)
	resultArray = append(resultArray, result)
	if result == 0 {
		return
	}
	count++
	if count > 100 {
		return
	}
	getMinimum(result, k)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func sumInt(a ...int) int {
	s := 0;
	for _, v := range a {
		s += v
	};
	return s
}
func maxInt(a ...int) int {
	m := a[0];
	for _, x := range a {
		if x > m {
			m = x
		}
	};
	return m
}
func minInt(a ...int) int {
	m := a[0];
	for _, x := range a {
		if x < m {
			m = x
		}
	};
	return m
}

func readInt() (N int) {
	fmt.Scan(&N)
	return
}

func readChar() (s string) {
	fmt.Scan(&s)
	return
}

// 指定の要素数の数列を読み込んでスライスで返す関数
func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

// 指定の要素数の文字列群を読み込んでスライスで返す関数
func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

// 絶対値
func abs(a int) int {
	return int(math.Abs(float64(a)))
}

// ２乗
func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

// 文字列群aの中に文字列bが含まれるかどうかを判定する。
func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

// 1行の文字列を入力
// Example:
// -----------------
// hogehoge
// -----------------
func StrStdin() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	return strings.TrimSpace(scanner.Text())
}

// 1つの符号付き整数値(64bit)入力
// Exapmle:
// ------------------
// 1000000007
// ------------------
func Int64Stdin() int64 {
	stringInput := StrStdin()
	num, _ := strconv.ParseInt(strings.TrimSpace(stringInput), 10, 64)
	return num
}

// 1つの符号なし整数値(64bit)入力
// Exapmle:
// ------------------
// 1000000007
// ------------------
func Uint64Stdin() uint64 {
	stringInput := StrStdin()
	num, _ := strconv.ParseUint(strings.TrimSpace(stringInput), 10, 64)
	return num
}

// 1つの符号付き浮動小数点数(64bit)の入力
// Exapmle:
// ------------------
// 33.4
// ------------------
func Float64Stdin() float64 {
	stringInput := StrStdin()
	num, _ := strconv.ParseFloat(strings.TrimSpace(stringInput), 64)
	return num
}

// 空白や空文字だけの値を除去したSplit
func SplitWithoutEmpty(stringTargeted string, delim string) []string {
	stringSplited := strings.Split(stringTargeted, delim)
	strs := []string{}

	for _, str := range stringSplited {
		if str != "" {
			strs = append(strs, str)
		}
	}
	return strs
}

// 空白区切りで複数の文字列を1行で入力
// Example:
// --------------------
// hoge fuga hage
// --------------------
func SliceStrsStdin(delim string) []string {
	stringInput := StrStdin()
	return SplitWithoutEmpty(stringInput, delim)
}

// 空白区切りで複数の符号付き整数値(64bit)を1行で入力
// Example:
// --------------------
// 45 -100 23
// --------------------
func SliceInt64Stdin() []int64 {
	stringSplited := SliceStrsStdin(" ")

	int64Slice := []int64{}

	for ni := range stringSplited {
		num, _ := strconv.ParseInt(stringSplited[ni], 10, 64)
		int64Slice = append(int64Slice, num)
	}

	return int64Slice
}

// 空白区切りで複数の符号付き整数値を1行で入力
// Example:
// --------------------
// 45 -100 23
// --------------------
func SliceIntStdin() []int {
	stringSplited := SliceStrsStdin(" ")

	intSlice := []int{}

	for ni := range stringSplited {
		num, _ := strconv.Atoi(stringSplited[ni])
		intSlice = append(intSlice, num)
	}

	return intSlice
}

// 空白区切りで複数の符号なし整数値(64bit)を1行で入力
// Example:
// --------------------
// 43 7 21
// --------------------
func SliceUint64Stdin() []uint64 {
	stringSplited := SliceStrsStdin(" ")

	uint64Slice := []uint64{}

	for ni := range stringSplited {
		num, _ := strconv.ParseUint(stringSplited[ni], 10, 64)
		uint64Slice = append(uint64Slice, num)
	}

	return uint64Slice
}

// 空白区切りで複数の符号付き浮動小数点数(64bit)を入力
// Example:
// --------------------
// 45.0 -62.1 11.7
// --------------------
func SliceFloat64Stdin() []float64 {
	stringSplited := SliceStrsStdin(" ")

	float64Slice := []float64{}

	for ni := range stringSplited {
		num, _ := strconv.ParseFloat(stringSplited[ni], 64)
		float64Slice = append(float64Slice, num)
	}

	return float64Slice
}
