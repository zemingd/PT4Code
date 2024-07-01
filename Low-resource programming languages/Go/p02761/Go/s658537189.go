package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	charNumber := make([]byte, n)
	var s, c int
	duplicatedDefinition := false
	zeroSpecifiedAt := 99
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d", &s, &c)
		newNumber := byte(c + 48)
		if charNumber[s-1] != 0 && charNumber[s-1] != newNumber {
			duplicatedDefinition = true
		}
		charNumber[s-1] = newNumber
		if c == 0 && zeroSpecifiedAt > s {
			zeroSpecifiedAt = s
		}
	}
	if n == 1 && charNumber[0] == 48 {
		fmt.Println(0)
		return
	}
	if duplicatedDefinition {
		fmt.Println(-1)
		os.Exit(0)
	}
	if zeroSpecifiedAt == 1 {
		fmt.Println(-1)
		return
	} else if zeroSpecifiedAt > 1 && zeroSpecifiedAt != 99 {
		needToSetOneAtTop := true
		for i := zeroSpecifiedAt - 1; i >= 0; i-- {
			if charNumber[i] != 0 {
				needToSetOneAtTop = false
				break
			}
		}
		if needToSetOneAtTop {
			charNumber[0] = 1 + 48
		}
	}
	for i := 0; i < n; i++ {
		if charNumber[i] == 0 {
			charNumber[i] = 48 // set zero
		}
	}
	if charNumber[0] == 48 {
		charNumber[0] = 49 // head of digit cannot be zero
	}

	strNumber := string(charNumber)

	answer, err := strconv.ParseInt(strNumber, 10, 64)

	if err == nil && countDigit(answer) == n {
		fmt.Println(answer)
	} else {
		fmt.Println(-1)
	}
}

func countDigit(n int64) int {
	cnt := 1
	for n/10 > 0 {
		n = n / 10
		cnt++
	}
	return cnt
}
