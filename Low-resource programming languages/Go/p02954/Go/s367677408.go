package main

import (
	"bufio"
	"fmt"
	"os"
	"unicode/utf8"
)

const (
	L = 'L'
	R = 'R'
)

var SIntListInitialValue int
var SIntListIsInitialized bool
var SIntListRecFunc func(int) int = nil

type SIntList []int

func lib_CountIntAsList(values []int, max int) []int {
	m := make([]int, max, max)
	for _, value := range values {
		m[value]++
	}
	return m
}
func lib_NewSIntList(length int, initialValue int) SIntList {
	if SIntListIsInitialized {
		panic("SIntList is already used")
	}
	ret := make([]int, length, length)
	for i := 0; i < length; i++ {
		ret[i] = initialValue
	}
	SIntListInitialValue = initialValue
	return ret
}
func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var S string
	scanner.Scan()
	S = scanner.Text()
	fmt.Println(solve(S))
}
func (si SIntList) Rec(f func(index int) int) {
	SIntListRecFunc = f
}
func (si SIntList) Update(index int) int {
	if SIntListRecFunc == nil {
		panic("SIntListRecFunc is nil")
	}
	if si[int(index)] != SIntListInitialValue {
		return si[int(index)]
	}
	ret := SIntListRecFunc(index)
	si[int(index)] = ret
	return ret
}
func solve(S string) string {
	s := []rune(S)
	N := utf8.RuneCountInString(S)
	lastPos := lib_NewSIntList(N, -1)
	lastPos.Rec(func(i int) int {
		switch s[i] {
		case R:
			if s[i+1] == L {
				return i
			}
			rightLastPos := lastPos.Update(i + 1)
			switch s[rightLastPos] {
			case L:
				return rightLastPos - 1
			case R:
				return rightLastPos + 1
			}
		case L:
			if s[i-1] == R {
				return i
			}
			leftLastPos := lastPos.Update(i - 1)
			switch s[leftLastPos] {
			case L:
				return leftLastPos - 1
			case R:
				return leftLastPos + 1
			}
		}
		panic("unexpected s: " + string(s[i]))
	})
	for i := 0; i < len(lastPos); i++ {
		lastPos.Update(i)
	}
	count := lib_CountIntAsList(lastPos, N)
	ret := ""
	for i := 0; i < len(count)-1; i++ {
		ret += fmt.Sprint(count[i], " ")
	}
	return ret + fmt.Sprint(count[len(count)-1])
}
