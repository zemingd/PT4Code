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
	sc.Split(bufio.ScanWords)
	N := nextInt()
	S, T := nextString(), nextString()

	var ans string
	for i := 0; i < N; i++ {
		ans += string(S[i]) + string(T[i])
	}
	fmt.Println(ans)
}
