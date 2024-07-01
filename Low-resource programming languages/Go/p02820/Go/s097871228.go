package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	Rock = iota
	Scissors
	Paper
	Fail
)

func main() {
	Count, Dup, RockP, ScissorsP, PaperP := readInt(), readInt(), readInt(), readInt(), readInt()
	Machine := readString()
	ResultArray, Result := make([]int, Count), 0

	for i, M := range strings.Split(Machine, "") {
		var r int
		switch M {
		case "r":
			r = Paper
		case "s":
			r = Rock
		case "p":
			r = Scissors
		}
		if i-Dup >= 0 && ResultArray[i-Dup] == r {
			ResultArray[i] = Fail
		} else {
			ResultArray[i] = r
		}
	}

	for _, v := range ResultArray {
		switch v {
		case Rock:
			Result += RockP
		case Scissors:
			Result += ScissorsP
		case Paper:
			Result += PaperP
		case Fail:
			continue
		}
	}
	fmt.Println(Result)
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
	//scanner.Split(bufio.ScanLines)
}

func readString() string {
	scanner.Scan()
	return scanner.Text()
}

func readInt() int {
	scanner.Scan()
	t, _ := strconv.Atoi(scanner.Text())
	return t
}
