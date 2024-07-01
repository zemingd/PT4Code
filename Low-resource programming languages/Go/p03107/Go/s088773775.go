package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	if !sc.Scan() {
		panic(errors.New("cannot read stdin"))
	}

	// 連続している2つの要素を除去する操作を行える
	// 除去する操作を行うことで幾つの要素を除去できたかを返却する
	s := sc.Text()

	numRemoved := 0
	for i, l := 0, len(s); i < l-1; i++ {
		if s[i] != s[i+1] {
			s = s[:i] + s[i+2:]
			numRemoved += 2
			l -= 2
			if i == 0 {
				i--
			} else {
				i -= 2
			}
		}
	}

	fmt.Println(numRemoved)
}