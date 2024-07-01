package main

import (
	"bufio"
	"fmt"
	"os"
)

var Parts = []string{"dream", "dreamer", "erase", "eraser"}

func main() {
	S := ReadString()
	dp := make([]bool, len(S)+1)
	dp[0] = true
	for i := 0; i < len(S); i++ {
		if !dp[i] {
			continue
		}
		for _, part := range Parts {
			if i+len(part) <= len(S) && S[i:i+len(part)] == part {
				dp[i+len(part)] = true
			}
		}
	}
	if dp[len(S)] {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadString() (s string) { Scan(&s); return }
