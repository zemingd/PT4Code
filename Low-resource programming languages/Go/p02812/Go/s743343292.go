package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	N := nextInt()
	S := nextString()

	count := 0
	for i := 0; i < N-2; i++ {
		if S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C' {
			count += 1
		}
	}
	fmt.Println(count)
}
