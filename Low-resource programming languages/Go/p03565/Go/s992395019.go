package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	//sc.Split(bufio.ScanWords)
	S, T := nextLine(), nextLine()

	fmt.Printf("%s\n", ABC076C(S, T))
}

// ABC076C ...
func ABC076C(S, T string) string {
	for i := 0; i < len(S); i++ {
		for j := i; j < len(S); j++ {
			tmpS := S[i : j+1]
			r := regexp.MustCompile("^" + strings.ReplaceAll(tmpS, "?", ".") + "$")
			if r.MatchString(T) {
				res := strings.Replace(S, tmpS, T, 1)
				res = strings.ReplaceAll(res, "?", "a")
				return res
			}
		}
	}

	return "UNRESTORABLE"
}
