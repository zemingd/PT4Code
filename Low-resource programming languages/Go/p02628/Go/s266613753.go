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
	n, k := 0, 0
	fmt.Scanf("%d %d", &n, &k)
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	ins := strings.Split(sc.Text(), " ")

	var in []int
	for _, j := range ins {
		i, _ := strconv.Atoi(j)
		in = append(in, i)
	}

	sort.Slice(in, func(i, j int) bool { return in[i] < in[j] })
	an := 0
	//fmt.Println(in)
	for i := 0; i < k; i++ {
     // fmt.Println(in[i])
		an += in[i]
	}
	fmt.Println(an)

}