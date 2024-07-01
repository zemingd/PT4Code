package main


import (
	"bufio"
	"os"
	"strconv"
	"strings"
	"fmt"
)

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

// 1つの符号無し整数値(64bit)入力
// Exapmle:
// ------------------
// 1000000007
// ------------------
func Uint64Stdin() uint64 {
	stringInput := StrStdin()
	num, _ := strconv.ParseUint(strings.TrimSpace(stringInput), 10, 64)
	return num
}

// 1つの符号付き浮動小数点(64bit)入力
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

// 空白区切りで複数の文字列を入力
// Example:
// --------------------
// hoge fuga hage
// --------------------
func SliceStrStdin(delim string) []string {
	stringInput := StrStdin()
	return SplitWithoutEmpty(stringInput, delim)
}

// 空白区切りで複数の符号付き整数値(64bit)を入力
// Example:
// --------------------
// 45 -100 23
// --------------------
func SliceInt64Stdin() []int64 {
	stringSplited := SliceStrStdin(" ")

	int64Slice := []int64{}

	for ni := range stringSplited {
		num, _ := strconv.ParseInt(stringSplited[ni], 10, 64)
		int64Slice = append(int64Slice, num)
	}

	return int64Slice
}

// 空白区切りで複数の符号無し整数値(64bit)を入力
// Example:
// --------------------
// 43 7 21
// --------------------
func SliceUint64Stdin() []uint64 {
	stringSplited := SliceStrStdin(" ")

	uint64Slice := []uint64{}

	for ni := range stringSplited {
		num, _ := strconv.ParseUint(stringSplited[ni], 10, 64)
		uint64Slice = append(uint64Slice, num)
	}

	return uint64Slice
}

// 空白区切りで複数の符号付き浮動小数点(64bit)を入力
// Example:
// --------------------
// 45.0 -62.1 11.7
// --------------------
func SliceFloat64Stdin() []float64 {
	stringSplited := SliceStrStdin(" ")

	float64Slice := []float64{}

	for ni := range stringSplited {
		num, _ := strconv.ParseFloat(stringSplited[ni], 64)
		float64Slice = append(float64Slice, num)
	}

	return float64Slice
}

func Solve() {
	ABK := SliceInt64Stdin()
	A, B, K := ABK[0], ABK[1], ABK[2]

	var (
		qa int64
		qb int64
	)

	if A - K >= 0 {
		qa, qb = A - K, B
	} else if (A + B) - K >= 0 {
		qa, qb = 0, (A + B) - K
	} else {
		qa, qb = 0, 0
	}

	fmt.Printf("%d %d", qa, qb)
}

func main() {
	Solve()
}