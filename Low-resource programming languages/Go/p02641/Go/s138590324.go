package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var x, n int
	var in []int
	var ou1 = map[int]int{}
	var ou2 = map[int]int{}

	fmt.Scanf("%d %d", &x, &n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	inst := strings.Split(sc.Text(), " ")
	for _, i := range inst {
		t, _ := strconv.Atoi(i)
		in = append(in, t)
	}
	ou2[0]++
	for _, i := range in {
		if i >= x {
			ou1[i-x]++
		} else {
			ou2[x-i]++
		}
	}
  //fmt.Println(ou1)
  //fmt.Println(ou2)

	for i := 0; ; i++ {
		_, ok2 := ou1[i]
		if !ok2 {
			fmt.Println(x - i)
			return
		}
		_, ok1 := ou1[i]
		if !ok1 {
			fmt.Println(x + i)
			return
		}

	}

}
