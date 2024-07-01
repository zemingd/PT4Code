package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
	"unsafe"
)

func main() {
	var input = irLine(2)

	var K = input[0][0]
	var A, B = input[1][0], input[1][1]

	if A%K == 0 {
		fmt.Printf("OK")
		return
	} else if ((A/K)+1)*K > B {
		fmt.Printf("NG")
		return
	}
	fmt.Printf("OK")

}

func RuneAt(s string, i int) rune {
	var rs = []rune(s)
	return rs[i]
}

func Sum(a, b int) int {
	return (a + b) * (b - a + 1) / 2
}

func permutation(n int, k int) int {
	v := 1
	if 0 < k && k <= n {
		for i := 0; i < k; i++ {
			v *= (n - i)
		}
	} else if k > n {
		v = 0
	}
	return v
}

func factorial(n int) int {
	return permutation(n, n-1)
}

func combination(n int, k int) int {
	return permutation(n, k) / factorial(k)
}

func homogeneous(n int, k int) int {
	return combination(n+k-1, k)
}

//round returns rounded integer number
func round(x float64) int {
	if x < float64(int(x))+0.5 {
		return int(x)
	}
	return int(x) + 1
}

//minf returns max{a, b}(a, b: float64)
func maxf(nums ...float64) float64 {
	if len(nums) == 0 {
		panic("funciton maxi() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		if res < nums[i] {
			res = nums[i]
		}
	}
	return res
}

//maxi returns max{a, b} (a, b: int)
func maxi(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton maxi() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		if res < nums[i] {
			res = nums[i]
		}
	}
	return res
}

//mini returns min{a, b, ...} (a, b: int)
func mini(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		if res > nums[i] {
			res = nums[i]
		}
	}
	return res
}

//minf returns min{a, b, ...} (a, b: int)
func minf(nums ...float64) float64 {
	if len(nums) == 0 {
		panic("funciton minf() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		if res > nums[i] {
			res = nums[i]
		}
	}
	return res
}

//pawf paw returns f^num(f:float64)
func pawf(f float64, num int) float64 {
	var result float64 = 1
	for i := 0; num > i; i++ {
		result *= f
	}
	return result
}

//pawi paw returns f^num(f:int)
func pawi(f int, num int) int {
	var result int = 1
	for i := 0; num > i; i++ {
		result *= f
	}
	return result
}

//rLine Read all standard input data
func rLine(line int) [][]string {
	var rdr = bufio.NewReaderSize(os.Stdin, 1000000)
	var buf = make([]byte, 0, 1000000)
	var stringInput [][]string

	for i := 0; i < line; {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			stringInput = append(stringInput, strings.Split(strings.TrimSpace(*conByte(buf)), " "))
			buf = []byte{}
			i++
		}
	}
	return stringInput
}

//irLine Read Standard input data and convert into integer
func irLine(i int) [][]int {
	return alatois(rLine(i))
}

//mrLine Read multi-line standard input data
// put the location of data of the number of lines in a first line
//ex:
// 3 5
// 1 2
// 2 3
// 3 5
// you have to put 1, where the number 3 put in the first line
func mrLine(line int) (first []int, other [][]string) {
	var rdr = bufio.NewReaderSize(os.Stdin, 1000000)
	var buf = make([]byte, 0, 1000000)
	var Input []string
	var stringInput [][]string

	{
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			Input = strings.Split(strings.TrimSpace((*conByte(buf))), " ")
			buf = []byte{}
		}
	}

	first = atois(Input)

	for i := 0; i < first[line-1]; {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			stringInput = append(stringInput, strings.Split(strings.TrimSpace((*conByte(buf))), " "))
			buf = []byte{}
			i++
		}
	}
	return first, stringInput
}

//mirLine  Read multi-line standard input data and convert into integer data
// put the location of data of the number of lines in a first line
//ex:
// 3 5
// 1 2
// 2 3
// 3 5
// you have to put 1, where the number 3 put in the first line
func mirLine(line int) (first []int, other [][]int) {
	var f, o = mrLine(line)
	return f, alatois(o)
}

//itoa converts string to integer
func atoi(s string) int {
	var i, _ = strconv.Atoi(s)
	return i
}

//itoas converts string slice to integer slice
func atois(S []string) []int {
	var result = make([]int, len(S))
	for i, s := range S {
		result[i] = atoi(s)
	}
	return result
}

//alitoas converts string 2 dimention slice to intger one
func alatois(S [][]string) [][]int {
	var result = make([][]int, len(S))
	for i, s := range S {
		result[i] = atois(s)
	}
	return result
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func gcd3(a, b, c int) int {
	return gcd(gcd(a, b), c)
}

//medi3 return median of 3 intger values
func medi3(x, y, z int) int {
	switch {
	case x < y:
		switch {
		case x > z:
			return x
		case z > y:
			return y
		default:
			return z
		}
	default:
		switch {
		case z < y:
			return y
		case x < z:
			return x
		default:
			return z
		}
	}
}

//meds3 return median of 3 stringer values
func meds3(x, y, z string) string {
	switch {
	case x < y:
		switch {
		case x > z:
			return x
		case z > y:
			return y
		default:
			return z
		}
	default:
		switch {
		case z < y:
			return y
		case x < z:
			return x
		default:
			return z
		}
	}
}

//qiSort sort integer slie by quick sort
func qiSort(a []int) {
	sort.Ints(a)
}

//qsSort sort stringer slie by quick sort
func qsSort(a []string) {
	sort.Strings(a)
}

//conStr convert string into []byte by unsafe pointer
func conStr(s *string) []byte {
	return *(*[]byte)(unsafe.Pointer(s))
}

//conByte convert []byte into string by unsafe pointer
func conByte(b []byte) *string {
	return (*string)(unsafe.Pointer(&b))
}

//absi returns absolute integer number
func absi(a int) int {
	if a > 0 {
		return a
	}
	return -a

}

//absf returns absolute integer number
func absf(a float64) float64 {
	if a > 0 {
		return a
	}
	return -a

}

//issum 累積和
func issum(s []int) []int {
	var result []int = make([]int, len(s)+1)
	for i := 0; i < len(s); i++ {
		result[i+1] = result[i] + s[i]
	}
	return result
}

//alissum 二次元累積和
func alissum(s [][]int) [][]int {
	var h int = len(s)
	var w int = len(s[0])

	var sums [][]int = make([][]int, h+1)
	sums[0] = make([]int, w+1)
	for i := 0; i < h; i++ {
		sums[i+1] = issum(s[i])
	}

	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			sums[i+1][j+1] = sums[i+1][j+1] + sums[i][j+1]
		}
	}

	return sums
}

//fssum 累積和(float64)
func fssum(s []float64) []float64 {
	var result []float64 = make([]float64, len(s)+1)
	for i := 0; i < len(s); i++ {
		result[i+1] = result[i] + s[i]
	}
	return result
}

//alfssum 二次元累積和(float64)
func alfssum(s [][]float64) [][]float64 {
	var h int = len(s)
	var w int = len(s[0])

	var sums [][]float64 = make([][]float64, h+1)
	sums[0] = make([]float64, w+1)
	for i := 0; i < h; i++ {
		sums[i+1] = fssum(s[i])
	}
	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			sums[i+1][j+1] = sums[i+1][j+1] + sums[i][j+1]
		}
	}
	return sums
}

//ispro 累積和
func ispro(s []int) []int {
	var result []int = make([]int, len(s)+1)
	for i := 0; i < len(s); i++ {
		result[i+1] = result[i] * s[i]
	}
	return result
}

//alispro 二次元累積和
func alispro(s [][]int) [][]int {
	var h int = len(s)
	var w int = len(s[0])

	var sums [][]int = make([][]int, h+1)
	sums[0] = make([]int, w+1)
	for i := 0; i < h; i++ {
		sums[i+1] = ispro(s[i])
	}
	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			sums[i+1][j+1] = sums[i+1][j+1] * sums[i][j+1]
		}
	}
	return sums
}
