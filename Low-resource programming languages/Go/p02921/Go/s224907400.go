package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// main is...
func main() {
	var n int
	fmt.Scanln(&n)

	var sc = bufio.NewScanner(os.Stdin)
	var list = make([]string, n)
	var listInt = make([]int64, n)

	if sc.Scan() {
		list = strings.Fields(sc.Text())
	}

	for idx, value := range list {
		// valueInt, _ := strconv.Atoi(value)
		valueInt, _ := strconv.ParseInt(value, 10, 64)
		listInt[idx] = valueInt
	}

	max, tmp := 0, 0
	for i := 0; i < n-1; i++ {
		// tmp = 0
		i += tmp
		if 0 >= n-i-max {
			break
		}
		// j := i + tmp
		// if i+1 > j {
		j := i + 1
		// }
		tmp = 0
		for ; j < n; j++ {
			if listInt[j] > listInt[j-1] {
				break
			}
			tmp++
		}
		if tmp > max {
			max = tmp
		}

	}
	fmt.Println(max)
}
