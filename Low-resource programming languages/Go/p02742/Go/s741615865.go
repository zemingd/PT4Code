package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	H, W := nextInt(), nextInt()

	ans := 0
	if H%2 == 0 {
		ans = (H / 2) * W
	} else {
		if W%2 == 0 {
			ans = ((H/2)+1)*(W/2) + (H/2)*W
		} else {
			ans = (H/2+1)*(W/2) + (H/2)*(W/2) + (H/2 + 1)
		}

	}
	fmt.Println(ans)
}
