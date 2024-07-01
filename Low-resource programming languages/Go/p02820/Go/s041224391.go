package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"unicode/utf8"
)

const (
	Rock         = "Rock"
	Scissors     = "Scissors"
	Paper        = "Paper"
	FailRock     = "FailRock"
	FailScissors = "FailScissors"
	FailPaper    = "FailPaper"
)

func main() {
	in := readLineInt()
	Count, Dup := in[0], in[1]

	in = readLineInt()
	RockP, ScissorsP, PaperP := in[0], in[1], in[2]

	Machine := readLine()
	ResultArray, Result := make([]string, Count), 0

	fmt.Println(utf8.RuneCountInString(Machine))

	for i, M := range strings.Split(Machine, "") {
		var r string
		switch M {
		case "r":
			r = Paper
		case "s":
			r = Rock
		case "p":
			r = Scissors
		default:
			fmt.Println("fixme: Fail at switch M")
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
			fmt.Println("initial")
			ResultArray[i] = r
		}
	}

	fmt.Println(ResultArray)

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

func isFail(i string) bool {
	return i == FailPaper || i == FailRock || i == FailScissors
}

func getFail(i string) string {
	switch i {
	case Rock:
		return FailRock
	case Scissors:
		return FailScissors
	case Paper:
		return FailPaper
	}
	fmt.Println("fixme: getFail")
	return ""
}

/////////////////////////////////////////

func readLineInt() []int {
	result := make([]int, 0)
	for _, v := range strings.Split(readLine(), " ") {
		i, _ := strconv.Atoi(v)
		result = append(result, i)
	}
	return result
}

var reader = bufio.NewReaderSize(os.Stdin, 1e6)

func readLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}
