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
	var a int64
	H = nextInt64()
	W = nextInt64()

	if 2 <= H && 2 <= W {
		if H%2 == 0 && W%2 == 0 {
			a = H * W / 2
		} else if H%2 == 1 && W%2 == 1 {
			a = (H-1)*(W-1)/2 + (W-1)/2 + (H-1)/2 + 1
		} else if H%2 == 1 {
			a = (H-1)*W/2 + W/2
		} else if W%2 == 1 {
			a = H*(W-1)/2 + H/2
		}
	} else if H == 1 || W == 1 {
		a = 1
	}
	fmt.Println(a)
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
