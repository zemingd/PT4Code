package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	sc.Split(bufio.ScanWords)
	foods := make([]int, 5, 5)
	for i := 0; i < 5; i++ {
		foods[i] = nextInt()
	}
	ss := 10
	big := -1
	for i := 0; i < 5; i++ {
		if foods[i]%10 != 0 && foods[i]%10 < ss {
			ss = foods[i] % 10
			big = i
		}
	}
	time := 0
	for i := 0; i < 5; i++ {
		if i == big {
			continue
		}
		time += foods[i]
		if time%10 != 0 {
			time += 10 - (time % 10)
		}
	}
	time += foods[big]
	fmt.Println(time)
}
