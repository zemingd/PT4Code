package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	BufferSize = 10*10*10*10*10 + 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}

	return sc.Text()
}

func getRev(before byte) byte {
	if before == '0' {
		return '1'
	}
	return '0'
}

func check() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	s := scanStr(sc)

	zeroFirstCount := 0
	oneFirstCount := 0
	for i := 0; i < len(s); i++ {
		surplus := i % 2
		if surplus == 0 {
			// 0, 2, 4,...
			if s[i] == '0' {
				oneFirstCount++
			} else {
				zeroFirstCount++
			}
		} else {
			// 1, 3, 5, ...
			if s[i] == '0' {
				zeroFirstCount++
			} else {
				oneFirstCount++
			}
		}
	}

	ret := 0
	if zeroFirstCount < oneFirstCount {
		ret = zeroFirstCount
	} else {
		ret = oneFirstCount
	}

	fmt.Printf("%d\n", ret)
}

func main() {
	check()
}
