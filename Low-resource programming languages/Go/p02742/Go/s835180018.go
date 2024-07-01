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
	var H, W int64
	H = nextInt64()
	W = nextInt64()
	//var r [H]int64
	//var c [W]int64

	if H*W%2 == 0 {
		fmt.Println(H * W / 2)

	} else {
		fmt.Println(H*W/2 + 1)

	}

}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextInt64() int64 {
	stdin.Scan()
	i, err := strconv.ParseInt(stdin.Text(), 10, 64)
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
