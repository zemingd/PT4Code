package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	if sc.Scan() {
		tmp := strings.Split(sc.Text(), " ")
		a, _ := strconv.Atoi(tmp[0])
		b, _ := strconv.Atoi(tmp[1])
		c, _ := strconv.Atoi(tmp[2])

		d := []int{a, b, c}

		sort.Sort(sort.IntSlice(d))

		fmt.Printf("%d %d %d\n", d[0], d[1], d[2])

	}
}

