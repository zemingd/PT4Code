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
	towers := []int64{}
	for _, s := range tmp {
		i, _ := strconv.ParseInt(s, 0, 64)
		towers = append(towers, i)
	}

	ma := map[int64][]int64{}

	for i := 0; i < int(m); i++ {
		s, _ := reader.ReadString('\n')
		tmp := strings.Split(strings.Replace(s, "\n", "", -1), " ")
		a, _ := strconv.ParseInt(tmp[0], 0, 64)
		b, _ := strconv.ParseInt(tmp[1], 0, 64)
		ma[towers[a-1]] = append(ma[towers[a-1]], b)
		ma[towers[b-1]] = append(ma[towers[b-1]], a)
	}

	good := 0
	for _, tower := range towers {
		good = good + a(tower, ma[tower])
	}
	fmt.Println(good)
}

func a(tower int64, ns []int64) int {
	for _, i := range ns {
		if tower > i {
			return 1
		}
	}
	return 0
}
