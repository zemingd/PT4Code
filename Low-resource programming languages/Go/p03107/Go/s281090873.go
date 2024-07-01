package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, 1e5+1)
	sc.Buffer(buf, 1e5+1)

	sc.Scan()
	S := []byte(sc.Text())

	var previous byte = 'a'
	texts := make([]int, 0)
	for _, s := range S {
		if s != previous {
			texts = append(texts, 1)
			previous = s
		} else {
			texts[len(texts)-1] += 1
		}
	}

	result := 0
	for i := 0; i < len(texts)-1; i++ {
		if texts[i] >= texts[i+1] {
			result += 2 * texts[i+1]
			texts[i+1] = 0
			if i+2 < len(texts) {
				texts[i+2] += texts[i] - texts[i+1]
			}
		} else {
			result += 2 * texts[i]
			texts[i+1] -= texts[i]
		}
	}

	fmt.Println(result)
}
