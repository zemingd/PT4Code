package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

// AtCoder Functions
var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}
func stringToSlice(str string) []string {
	return strings.Split(str, "")
}

func main() {
	sc.Split(bufio.ScanWords)
	S := nextString()
	T := nextString()

	Sary := stringToSlice(S)
	Tary := stringToSlice(T)
	N := len(Sary)

	ret := "No"
	for loop := 0; loop < N; loop++ {
		yes := true
		for i := 0; i < N; i++ {
			if Sary[i] != Tary[i] {
				yes = false
				continue
			}
		}
		if yes {
			ret = "Yes"
			break
		}
		tmp := Sary[N-1]
		for i := N - 1; i > 0; i-- {
			Sary[i] = Sary[i-1]
		}
		Sary[0] = tmp
	}

	fmt.Println(ret)
}
