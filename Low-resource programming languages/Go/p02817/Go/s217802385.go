package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var delimiter = " "
	var studinParams = strings.Split(nextLine(), delimiter)
	validation(studinParams)
	var answerWord = fmt.Sprintf("%s%s", studinParams[1], studinParams[0])
	fmt.Fprintln(os.Stdout, answerWord)
}

func validation(studinParams []string) []string {

	if len(studinParams) != 2 {
		panic("argment error")
	}
	var firstWord, secondWord = studinParams[0], studinParams[1]
	var firstWordLength = len(firstWord)
	var secondWordLength = len(secondWord)
	// length 1 - 100 and small a - z
	if firstWordLength < 1 || 100 < firstWordLength {
		panic("allow length 1 to 100")
	}
	if secondWordLength < 1 || 100 < secondWordLength {
		panic("allow length 1 to 100")
	}

	var regexpSmallAlphabet = regexp.MustCompile(`^[a-z]*$`)
	if !regexpSmallAlphabet.Match([]byte(firstWord)) || !regexpSmallAlphabet.Match([]byte(secondWord)) {
		panic("allow char a to z")
	}
	return studinParams
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
