package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	S := read()
	prev := "R"
	ans := []int{0}
	carryOverAt := 0
	carryOverVal := 1
	for i := 1; i < len(S); i++ {
		ans = append(ans, 0)
		cur := string(S[i])
		if cur == "R" {
			if prev == cur {
				carryOverAt++
				carryOverVal++
			} else {
				ans[carryOverAt] = carryOverVal
				carryOverVal = 1
				carryOverAt = i
			}
		} else {
			if prev == cur {
				carryOverVal++
				if i == len(S)-1 {
					ans[carryOverAt] = carryOverVal
				}
			} else {
				ans[i-1] = carryOverVal
				carryOverVal = 1
				carryOverAt = i
			}
		}
		prev = cur
	}
	for i := 0; i < len(ans); i++ {
		fmt.Print(ans[i])
		if i != len(ans)-1 {
			fmt.Print(" ")
		} else {
			fmt.Print("\n")
		}
	}
}
