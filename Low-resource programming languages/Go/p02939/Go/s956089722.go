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

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	// read one word/char/int separated by space(s).
	//sc.Split(bufio.ScanWords)

	// read one line.
	sc.Split(bufio.ScanLines)
}

func main() {
	S := nextStr()
	cur := []byte{}
	prev := []byte{}
	ans := 0
	for i := 0; i < len(S); i++ {
		cur = append(cur, S[i])
		if string(cur) == string(prev) {
			continue
		}
		ans++
		prev = cur
		cur = []byte{}
	}
	fmt.Println(ans)
}
