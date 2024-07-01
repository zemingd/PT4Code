// Nが小さいので適当に頭から探索してTを埋め込めたところで余った?はaにでもしておけ
package main

import (
	"fmt"
	"strings"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)
	SS, TT := make([]string, len(S)), make([]string, len(T))
	for i, c := range []rune(S) {
		SS[i] = string(c)
	}
	for i, c := range []rune(T) {
		TT[i] = string(c)
	}
	idx := -1
	for i := 0; i <= len(SS)-len(TT); i++ {
		if SS[i] == TT[0] || SS[i] == "?" {
			flag := true
			for j := 1; j < len(TT); j++ {
				if SS[i+j] == TT[j] || SS[i+j] == "?" {
					continue
				} else {
					flag = false
				}
			}
			if flag {
				idx = i
				break
			}
		}
	}
	fmt.Println(idx)
	if idx == -1 {
		fmt.Println("UNRESTOREBLE")
	} else {
		for i := 0; i < len(SS); i++ {
			if idx <= i && i < idx+len(TT) {
				SS[i] = TT[i-idx]
			} else {
				if SS[i] == "?" {
					SS[i] = "a"
				}
			}
		}
		fmt.Println(strings.Join(SS, ""))
	}
}
