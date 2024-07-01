package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	a := SliceInt64Stdin()
	summerVacation := a[0]
	homeworkTakes := SliceInt64Stdin()
	sumDays := int64(0)
	for _, days := range homeworkTakes {
		sumDays += days
	}

	actualVacation := summerVacation - sumDays
	if actualVacation < 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(actualVacation)
	}
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
