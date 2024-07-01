package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	N, _ := strconv.Atoi(tmp)

	tmp, _ = reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	tmpV := strings.Split(tmp, " ")
	v := make([]int, N)
	for i, sv := range tmpV {
		t, ok := strconv.Atoi(sv)
		if ok == nil {
			v[i] = t
		}
	}

	tmp, _ = reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")
	tmpC := strings.Split(tmp, " ")
	diff := make([]int, N)

	for i, sc := range tmpC {
		t, ok := strconv.Atoi(sc)
		if ok == nil {
			diff[i] = v[i] - t
		}
	}

	sort.Slice(diff, func(i, j int) bool { return diff[i] > diff[j] })

	var s int
	for i, d := range diff {
		if diff[i] > 0 {
			s += d
		}
	}
	fmt.Println(s)
}
