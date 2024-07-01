package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)
var ReadString func() string
var ReadLine func() string
var ReadInt64 func() int64
var ReadInt func() int
var ReadIntSlice func(int) []int
var ReadInt64Slice func(int) []int64
var GetIntAbs func(int) int
var Atoi func(string) int
var FindMin func([] int) int
var FindMax func([] int) int

func init() {
	ReadString = newReadString()
	ReadLine = readLine
	ReadInt64 = readInt64
	ReadInt = readInt
	ReadIntSlice = readIntSlice
	FindMin = findMin
	FindMax = findMax
}

func main() {
	s := ReadLine()
	var c int

	if string(s[0]) == "1" {
		c += 1
	}
	if string(s[1]) == "1" {
		c += 1
	}
	if string(s[2]) == "1" {
		c += 1
	}
	fmt.Println(c)
}

/*------ scan ------*/

func newReadString() func() string {
	sc.Buffer(make([]byte, 1024), 2048)
	sc.Split(bufio.ScanWords)
	return func() string {
		if !sc.Scan() {
			panic("scanできなかった")
		}
		return sc.Text()
	}
}

func readLine() string {
	if !sc.Scan() {
		panic("line をscanできなかった")
	}
	return sc.Text()
}

func readInt64() int64 {
	i, err := strconv.ParseInt(ReadString(), 0, 64)
	if err != nil {
		fmt.Println("parseInt失敗")
		panic(err.Error())
	}
	return int64(i)
}

func readInt() int {
	i := ReadInt64()
	return int(i)
}

func readIntSlice(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt()
	}
	return arr
}

func readInt64Slice(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt64()
	}
	return arr
}

/*------ number util ------*/

func getIntAbs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func atoi(a string) int {
	i, err := strconv.Atoi(a)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func findMin(arr []int) int {
	if len(arr) == 0 {
		return 0
	}
	min := arr[0]
	for _, v := range arr {
		if v < min {
			min = v
		}
	}
	return min
}

func findMax(arr []int) int {
	if len(arr) == 0 {
		return 0
	}
	max := arr[0]
	for _, v := range arr {
		if v > max {
			max = v
		}
	}
	return max
}
