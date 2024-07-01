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
	FailRock
	FailScissors
	FailPaper
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

		if i-Dup >= 0 {
			if isFail(ResultArray[i-Dup]) {
				ResultArray[i] = r
			} else if ResultArray[i-Dup] == r {
				ResultArray[i] = getFail(r)
			} else {
				ResultArray[i] = r
			}
		} else {
			ResultArray[i] = r
		}
	}

	for _, v := range ResultArray {
		switch {
		case v == Rock:
			Result += RockP
		case v == Scissors:
			Result += ScissorsP
		case v == Paper:
			Result += PaperP
		case isFail(v):
			Result += 0
		}
	}

	fmt.Println(Result)
}

func isFail(i int) bool {
	return i == FailPaper || i == FailRock || i == FailScissors
}

func getFail(i int) int {
	switch i {
	case Rock:
		return FailRock
	case Scissors:
		return FailScissors
	case Paper:
		return FailPaper
	}
	return 0
}

func isSameFail(i, Fail int) bool {
	switch Fail {
	case FailRock:
		return i == Rock
	case FailScissors:
		return i == Scissors
	case FailPaper:
		return i == Paper
	}
	return false
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
