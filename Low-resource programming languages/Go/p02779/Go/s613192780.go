package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"unsafe"
)

func main() {
	var input = irLine(2)
	var _, A = input[0][0], input[1]

	qiSort(A)

	for i := 0; i < len(A)-1; i++ {
		if A[i] == A[i+1] {
			fmt.Printf("NO")
			return
		}
	}
	fmt.Printf("YES")
}

//round returns rounded integer number
func round(x float64) int {
	if x < float64(int(x))+0.5 {
		return int(x)
	}
	return int(x) + 1
}

//minf returns min{a, b}(a, b: float64)
func minf(a, b float64) float64 {
	if a > b {
		return b
	}
	return a
}

//mini returns min{a, b} (a, b: int)
func mini(a, b int) int {
	if a > b {
		return b
	}
	return a
}

//minf returns max{a, b}(a, b: float64)
func maxf(a, b float64) float64 {
	if a > b {
		return a
	}
	return b
}

//maxi returns max{a, b} (a, b: int)
func maxi(a, b int) int {
	if a > b {
		return a
	}
	return b
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
	return alitoas(rLine(i))
}

//mtrLine Read multi-line standard input data
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

	first = itoas(Input)

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
	return f, alitoas(o)
}

//itoa converts string to integer
func itoa(s string) int {
	var i, _ = strconv.Atoi(s)
	return i
}

//itoas converts string slice to integer slice
func itoas(S []string) []int {
	var result = make([]int, len(S))
	for i, s := range S {
		result[i] = itoa(s)
	}
	return result
}

//alitoas converts string 2 dimention slice to intger one
func alitoas(S [][]string) [][]int {
	var result = make([][]int, len(S))
	for i, s := range S {
		result[i] = itoas(s)
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

//iQuicksort sort integer slice by quick sort
func iQuicksort(a []int, left, right int) {
	if left < right {
		var i, j, tmp int = left, right, 0
		var pivot int = medi3(a[i], a[i+(j-i)/2], a[j])

		for {
			for ; a[i] < pivot; i++ {
			}
			for ; pivot < a[j]; j-- {
			}
			if i >= j {
				break
			}
			tmp = a[i]
			a[i] = a[j]
			a[j] = tmp /* a[i], a[j] を交換 */
			i++
			j--
		}
		iQuicksort(a, left, i-1)  /* 分割した左を再帰的にソート */
		iQuicksort(a, j+1, right) /* 分割した右を再帰的にソート */
	}
}

//iQuicksort sort integer slice by quick sort
func sQuicksort(a []string, left, right int) {
	if left < right {
		var i, j int = left, right
		var tmp string
		var pivot string = meds3(a[i], a[i+(j-i)/2], a[j])

		for {
			for ; a[i] < pivot; i++ {
			}
			for ; pivot < a[j]; j-- {
			}
			if i >= j {
				break
			}
			tmp = a[i]
			a[i] = a[j]
			a[j] = tmp /* a[i], a[j] を交換 */
			i++
			j--
		}
		sQuicksort(a, left, i-1)  /* 分割した左を再帰的にソート */
		sQuicksort(a, j+1, right) /* 分割した右を再帰的にソート */
	}
}

//qiSort sort integer slie by quick sort
func qiSort(a []int) {
	iQuicksort(a, 0, len(a)-1)
}

//qiSort sort stringer slie by quick sort
func qsSort(a []string) {
	sQuicksort(a, 0, len(a)-1)
}

//conStr convert string into []byte by unsafe pointer
func conStr(s *string) []byte {
	return *(*[]byte)(unsafe.Pointer(s))
}

//conByte convert []byte into string by unsafe pointer
func conByte(b []byte) *string {
	return (*string)(unsafe.Pointer(&b))
}
