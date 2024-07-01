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

	k := nextInt()
	a := nextInt()
	b := nextInt()

	ans := func() string {
		for i := a; i <= b; i++ {
			if i%k == 0 {
				return "OK"
			}
		}
		return "NG"
	}()

	fmt.Println(ans)

}
