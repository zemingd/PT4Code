package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var huge = int(math.Pow(10, 18))

const maxS = 50*50 + 5

func main() {
	A := make([][]int,3)
	for i:= range A{
		InputIntVec(" ",&A[i])
	}
	var n int
	InputInt(" ",&n)
	for i:=0;i<n;i++{
		var b int
		InputInt(" ",&b)
		for i := range A{
			for j:= range A[i]{
				if A[i][j] == b{
					A[i][j] = -1
				}
			}
		}
	}
	flag := false
	for i := range A{
		if A[i][0]+A[i][1]+A[i][2] == -3 || A[0][i]+A[1][i]+A[2][i] ==-3{
			flag = true
			break
		}
	}
	if A[0][0]+A[1][1]+A[2][2] == -3 ||A[0][2]+A[1][1]+A[2][0] == -3{
		flag = true
	}
	if flag{
		Write("Yes")
	}else{
		Write("No")
	}
	Flush()
}

/*----------文字列関連----------*/

// ReverseByte byte列の反転
func ReverseByte(list []byte) []byte {
	l := len(list)
	res := make([]byte, l)
	for i := 0; i < l; i++ {
		res[i] = list[l-i-1]
	}
	return res
}

/*----------Intでの基本計算関数----------*/

// MinInt 最大値導出関数
func MinInt(nums ...int) int {
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		switch {
		case nums[i] < res:
			res = nums[i]
		}
	}
	return res
}

// MaxInt 最大値導出関数
func MaxInt(nums ...int) int {
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		switch {
		case nums[i] > res:
			res = nums[i]
		}
	}
	return res
}

// PowInt Int型での冪乗計算
func PowInt(n int, x int) int {
	res := 1
	for i := 0; i < x; i++ {
		res *= n
	}
	return res
}

// SumInt Int型での合計計算
func SumInt(A ...int) int {
	sum := 0
	for _, a := range A {
		sum += a
	}
	return sum
}

// AbsInt Int型での絶対値計算
func AbsInt(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}

/*----------Int型スライスの基本計算関数----------*/

// MinIntVec 最大値導出関数 インデックスも返す
func MinIntVec(nums []int) (int, []int) {
	res := nums[0]
	var index []int
	for i := 0; i < len(nums); i++ {
		switch {
		case nums[i] < res:
			res = nums[i]
			index = []int{i}
		case nums[i] == res:
			index = append(index, i)
		}
	}
	return res, index
}

// MaxIntVec 最大値導出関数 インデックスも返す
func MaxIntVec(nums []int) (int, []int) {
	res := nums[0]
	var index []int
	for i := 0; i < len(nums); i++ {
		switch {
		case nums[i] > res:
			res = nums[i]
			index = []int{i}
		case nums[i] == res:
			index = append(index, i)
		}
	}
	return res, index
}

// SumIntVec Int型での合計計算
func SumIntVec(A []int) int {
	sum := 0
	for _, a := range A {
		sum += a
	}
	return sum
}

/*----------標準入力・出力用の関数----------*/
var reader = bufio.NewReader(os.Stdin)
var writer = bufio.NewWriter(os.Stdout)

// InputLine 次の標準入力をstring型として取得
func InputLine() string {
	buffer := make([]byte, 0)
	for true {
		line, isPrefix, _ := reader.ReadLine()
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

// InputString いくつかの文字列をstring型で取得
func InputString(delim string, A ...*string) {
	L := strings.Split(InputLine(), delim)
	for i, a := range A {
		*a = L[i]
	}
}

// InputStringVec delim区切りの文字列をstring型のスライスとして取得
func InputStringVec(delim string,A *[]string) {
	L := strings.Split(InputLine(), delim)
  *A = make([]string,len(L))
  for i := range L {
		(*A)[i] = L[i]
	}
}

// InputInt いくつかの数値をint型で取得
func InputInt(delim string, A ...*int) {
	L := strings.Split(InputLine(), delim)
	for i, a := range A {
		*a, _ = strconv.Atoi(L[i])
	}
}

// InputIntVec delim区切りの数値をint型のスライスとして取得
func InputIntVec(delim string, A *[]int) {
	L := strings.Split(InputLine(), delim)
	*A = make([]int, len(L))
	for i := range L {
		(*A)[i], _ = strconv.Atoi(L[i])
	}
}

// Write バッファに対応した出力関数
func Write(s interface{}) {
	fmt.Fprintln(writer, s)
}

// WriteIntVec バッファに対応したInt型スライスの出力関数
func WriteIntVec(A []int) {
	S := make([]string, len(A))
	for i, a := range A {
		S[i] = strconv.Itoa(a)
	}
	Write(strings.Join(S, " "))
}

// Flush バッファした出力をフラッシュ
func Flush() {
	_ = writer.Flush()
}
