package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := newInputScanner(true, 512*1024)
	S := sc.nextStr()
	Q := sc.nextInt()
	answer := list.New()
	for _, r := range S {
		answer.PushBack(r)
	}
	var T, F int
	var C rune
	var flipped bool
	for i := 0; i < Q; i++ {
		switch T = sc.nextInt(); T {
		case 1:
			flipped = !flipped
		case 2:
			F, C = sc.nextInt(), []rune(sc.nextStr())[0]
			if flipped {
				F = 3 - F // 1 -> 2, 2 -> 1
			}
			switch F {
			case 1:
				answer.PushFront(C)
			case 2:
				answer.PushBack(C)
			}
		}
	}
	if flipped {
		for e := answer.Back(); e != nil; e = e.Prev() {
			fmt.Print(string(e.Value.(rune)))
		}
	} else {
		for e := answer.Front(); e != nil; e = e.Next() {
			fmt.Print(string(e.Value.(rune)))
		}
	}
	fmt.Println()
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
