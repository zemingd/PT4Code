package main

import (
	"bufio"
	"fmt"
	"os"
)

func process(in [4]int) (ret int) {
	var max int
	inited := false

	for _, v1 := range in[:2] {
		for _, v2 := range in[2:] {
			ret := v1 * v2
			if inited == false || max < ret {
				max = ret
				inited = true
			}
		}
	}
	return max
}

func scanNum() (n int) {
	fmt.Scanf("%d\n", &n)
	return
}

func scanStrings(n int) []string {
	sc := bufio.NewScanner(os.Stdin)

	ret := make([]string, n)
	for i := 0; i < n; i++ {
		if sc.Scan() {
			ret[i] = sc.Text()
		}
	}
	return ret
}

func main() {
	var in [4]int

	fmt.Scanf("%d %d %d %d", &in[0], &in[1], &in[2], &in[3])
	ret := process(in)
	fmt.Println(ret)
}
