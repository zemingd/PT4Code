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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	s := nextString()
	t := nextString()

	ans := func() string {
		for i := 0; i < len(s); i++ {
			if s[i] != t[i] {
				return "No"
			}
		}
		return "Yes"
	}()

	fmt.Println(ans)
}
