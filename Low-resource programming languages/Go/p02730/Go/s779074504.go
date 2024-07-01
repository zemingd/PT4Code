package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := newInputScanner(true, 1024)
	S := sc.nextStr()
	N := len(S)
	allRunes := []rune(S)
	leftPart := allRunes[0 : (N-1)/2]
	rightPart := allRunes[((N-1)/2 + 1):N]
	// fmt.Println(string(leftPart))
	// fmt.Println(string(rightPart))
	if isPalindrome(allRunes) && isPalindrome(leftPart) && isPalindrome(rightPart) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func isPalindrome(runes []rune) bool {
	length := len(runes)
	for i := 0; i < length/2; i++ {
		if runes[i] != runes[length-1-i] {
			return false
		}
	}
	return true
}

type inputScanner struct {
	*bufio.Scanner
}

func newInputScanner(enabledScanWords bool, sizeInKB int) *inputScanner {
	scanner := bufio.NewScanner(os.Stdin)
	if enabledScanWords {
		scanner.Split(bufio.ScanWords)
	}
	capacity := sizeInKB * 1024
	buf := make([]byte, capacity)
	scanner.Buffer(buf, capacity)
	return &inputScanner{
		Scanner: scanner,
	}
}

func (inputSc *inputScanner) nextInt() int {
	i, e := strconv.Atoi(inputSc.nextStr())
	if e != nil {
		panic(e)
	}
	return i
}

func (inputSc *inputScanner) nextUInt64() uint64 {
	i, e := strconv.ParseUint(inputSc.nextStr(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}

func (inputSc *inputScanner) nextStr() string {
	inputSc.Scan()
	return inputSc.Text()
}

type debuggable struct {
}

const (
	DEBUG_ON = false
)

func (d *debuggable) debug(f func()) {
	if DEBUG_ON {
		f()
	}
}
