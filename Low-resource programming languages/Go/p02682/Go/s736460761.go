package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	ss, _ := reader.ReadString('\n')
	tmp := strings.Split(strings.Replace(ss, "\n", "", -1), " ")
	k := p(tmp[3])

	m := map[int64]int64{
		1:  p(tmp[0]),
		0:  p(tmp[1]),
		-1: p(tmp[2]),
	}

	var result int64 = 0
	for _, i := range []int64{1, 0, -1} {
		n := m[i]
		if n > k {
			result = result + i*k
			k = 0
		} else {
			result = result + i*n
			k = k - n
		}
	}
	fmt.Println(result)
}

func p(s string) int64 {
	i, _ := strconv.ParseInt(s, 0, 64)
	return i
}