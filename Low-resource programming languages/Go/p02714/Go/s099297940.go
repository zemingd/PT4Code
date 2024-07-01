package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	N := nextInt()
	S := []byte(nextStr())
	sum := 0
	for i := 0; i < N; i++ {
		for j := i; j < N; j++ {
			for k := j; k < N; k++ {
				if S[i] != S[j] && S[i] != S[k] && S[j] != S[k] {
					if j-i != k-j {
						sum++
					}
				}
			}
		}
	}
	fmt.Println(sum)
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	stdin.Scan()
	i := stdin.Text()
	// if err != nil {
	// 	panic(err)
	// }
	return i
}
