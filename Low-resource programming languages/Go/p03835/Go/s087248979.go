// https://beta.atcoder.jp/contests/abc051/tasks/abc051_b

// template start
package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"bufio"
)

var sc = bufio.NewScanner(os.Stdin)
var buf = make([]byte, 1000)

func inputLine() string{
	sc.Scan()
	return sc.Text()
}

func scanInt() int {
	out, e := strconv.Atoi(inputLine())
	if e != nil {
        panic(e)
    }
	return out
}

func scanIntArray(n int) []int {
	out := make([]int, n)
	for i, v := range(strings.Split(inputLine(), " ")) {
		num, e := strconv.Atoi(v)
		if e != nil {
			panic(e)
		}
		out[i] = num
	}
	return out
}
//  template end

func main() {
	sc.Buffer(buf, 10000)
	arr := scanIntArray(2)
	k, s := arr[0], arr[1]
	cnt := 0
	var x, y, z = 0, 0, 0
	for x=0; x<=y; x++ {
		for y=x; y<=s-(x+y); y++ {
			z = s - (x+y)
			if z >= 0 && z <= k {
				if x==y && y==z {
					fmt.Println(x, y, z)
					cnt += 1
				} else if (x!=y && y==z) || (y!=z && z==x) || (z!=x && x==y) {
					fmt.Println(x, y, z)
					cnt += 3
				} else {
					fmt.Println(x, y, z)
					cnt += 6
				}
			} else {
				continue
			}
		}
	}
	fmt.Println(cnt)
}