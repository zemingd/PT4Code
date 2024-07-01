package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	seconds := nextInt(sc)
	fmt.Println(formatTime(seconds))
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextInt(sc *bufio.Scanner) int64 {
	i, err := strconv.ParseInt(nextString(sc), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func formatTime(seconds int64) string {
	a := seconds / 60
	h := a / 60
	m := a - h*60
	s := seconds - m*60 - h*3600
	return fmt.Sprintf("%d:%d:%d", h, m, s)
}

