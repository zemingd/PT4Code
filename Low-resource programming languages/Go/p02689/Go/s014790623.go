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
	nm, _ := reader.ReadString('\n')
	tmp := strings.Split(strings.Replace(nm, "\n", "", -1), " ")
	m, _ := strconv.ParseInt(tmp[1], 0, 64)

	towerss, _ := reader.ReadString('\n')
	tmp = strings.Split(strings.Replace(towerss, "\n", "", -1), " ")

	ma := map[int64]bool{}

	for i := 0; i < int(m); i++ {
		s, _ := reader.ReadString('\n')
		tmp := strings.Split(strings.Replace(s, "\n", "", -1), " ")
		a, _ := strconv.ParseInt(tmp[0], 0, 64)
		b, _ := strconv.ParseInt(tmp[1], 0, 64)
		if a > b {
			ma[a] = true
		} else {
			ma[b] = true
		}
	}

	good := 0
	for _, v := range ma {
		if v {
			good = good + 1
		}
	}
	fmt.Println(good)
}
