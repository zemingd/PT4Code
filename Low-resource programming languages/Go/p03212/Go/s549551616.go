package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func candidates(s string) []string {

	var ret []string

	for i := 3; i < len(s); i++ {
		ret = append(ret, strings.Repeat(string('9'), i))
	}

	ret = append(ret, s)
	return ret
}

func patterns(n int) []string {

	if n == 1 {
		var ret []string
		ret = append(ret, "3", "5", "7")
		return ret
	}

	prevs := patterns(n - 1)
	var ret []string

	for _, s := range prevs {
		ret = append(ret, string('3')+s)
	}

	for _, s := range prevs {
		ret = append(ret, string('5')+s)
	}

	for _, s := range prevs {
		ret = append(ret, string('7')+s)
	}

	return ret
}

func isThree(s string) bool {

	for _, c := range s {
		if c == rune('3') {
			return true
		}
	}

	return false
}

func isFive(s string) bool {

	for _, c := range s {
		if c == rune('5') {
			return true
		}
	}

	return false
}

func isSeven(s string) bool {

	for _, c := range s {
		if c == rune('7') {
			return true
		}
	}

	return false
}

func countS(s string) int {

	ret := 0

	for _, i := range patterns(len(s)) {
		if s <= i {
			break
		}

		if isThree(i) && isFive(i) && isSeven(i) {
			ret++
		}
	}

	return ret
}

func main() {

	stdio := bufio.NewScanner(os.Stdin)
	stdio.Scan()
	line := stdio.Text()

	answer := 0
	for _, s := range candidates(line) {
		answer += countS(s)
	}

	fmt.Println(answer)
}
