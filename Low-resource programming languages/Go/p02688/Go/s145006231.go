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
	nk, _ := reader.ReadString('\n')
	tmp := strings.Split(strings.Replace(nk, "\n", "", -1), " ")
	n, _ := strconv.ParseInt(tmp[0], 0, 64)
	k, _ := strconv.ParseInt(tmp[1], 0, 64)

	m := make(map[string]bool)

	for i := 0; i < int(k); i++ {
		var d int
		_, _ = fmt.Scanf("%d", &d)
		s, _ := reader.ReadString('\n')
		tmp := strings.Split(strings.Replace(s, "\n", "", -1), " ")

		for _, j := range tmp {
			m[j] = true
		}
	}

	for _, v := range m {
		if v {
			n = n - 1
		}
	}
	fmt.Println(n)
}
