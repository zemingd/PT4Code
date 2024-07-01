package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := newInputScanner(true, 64)
	H, W := sc.nextInt(), sc.nextInt()
	var answer int
	if H%2 == 0 {
		answer = (H / 2) * W
	} else {
		answer = (H/2)*W + W/2 + 1
	}
	fmt.Println(answer)
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
