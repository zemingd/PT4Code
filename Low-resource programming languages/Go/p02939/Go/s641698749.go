package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 2e5+1)
	sc.Buffer(buf, 2e5+1)

	sc.Scan()
	S := sc.Bytes()
	count := 0
	for i := 0; i < len(S); {
		if i == len(S)-1 {
			count++
			break
		} else if i == len(S)-2 {
			if S[i] == S[i+1] {
				count++
				break
			} else {
				count += 2
				break
			}
		} else {
			if S[i] == S[i+1] {
				count += 2
				i += 3
			} else {
				count++
				i++
			}
		}
	}
	fmt.Println(count)
}
