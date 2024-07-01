package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdout)

/*------ scan ------*/

func ReadInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println("scanできなかった")
		panic(err.Error())
	}
	return int64(i)
}

func ReadInt() int {
	i := ReadInt64()
	return int(i)
}

func ReadIntSlice(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt()
	}
	return arr
}

func ReadInt64Slice(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt64()
	}
	return arr
}

/*------ number util ------*/

func GetIntAbs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func Atoi(a string) int {
	i, err := strconv.Atoi(a)
	if err != nil {
		panic(err.Error())
	}
	return i
}


func main() {
	x := ReadInt()
	a := ReadInt()
	if x < a {
		fmt.Println(0)
	} else {
		fmt.Println(10)
	}
}