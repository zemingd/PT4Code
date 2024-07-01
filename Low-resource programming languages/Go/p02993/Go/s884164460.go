package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	S := next()
	for i := 0; i < len(S)-1; i++ {
		if S[i] == S[i+1] {
			fmt.Println("Bad")
			return
		}
	}

	fmt.Println("Good")
}