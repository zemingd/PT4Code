package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// AtCoder Functions
var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
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
func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func unshift(element int, slice []int) []int {
	slice = append(slice[:1], slice[:]...)
	slice[0] = element
	return slice
}
func spliceInsert(index int, element int, slice []int) []int {
	slice = append(slice[:index+1], slice[index:]...)
	slice[index] = element
	return slice
}
func spliceRemove(index int, slice []int) []int {
	slice = append(slice[:index], slice[index+1:]...)
	return slice
}
func stringToSlice(str string) []string {
	return strings.Split(str, "")
}

func main() {
	// 文字列を読む混む場合は1行の文字数が最大でも640000文字以下になることを確認する
	sc.Split(bufio.ScanWords)
	N := nextInt()

	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = i + 1
	}

	ret := 0
	for i := 0; i < N; i++ {
		ret += i % A[i]
	}
	fmt.Println(ret)
}
