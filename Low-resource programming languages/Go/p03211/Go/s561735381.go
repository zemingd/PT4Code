package main

import (
	"fmt"
	"math"
	"sort"
	"strconv"
	"strings"
)

func resolve(num string) {
	var rep []int
	var temp2 []int
	var temptemp int

	temp := strings.Split(num, "")
	for i := 0; i < len(temp); i++ {
		temptemp, _ = strconv.Atoi(temp[i])
		temp2 = append(temp2, temptemp)
	}
	for i := 0; i < len(num)-2; i++ {
		temp_num := temp2[i]*100 + temp2[i+1]*10 + temp2[i+2]
		rep = append(rep, temp_num)
	}

	sort.Ints(rep)

	min := 999999
	for i := 0; i < len(rep); i++ {
		tempnum := math.Abs(float64(rep[i] - 753))
		if min > int(tempnum) {
			min = int(tempnum)
		}
	}
	fmt.Println(min)
}
func main() {
	var s string
	fmt.Scanf("%s\n", &s)

	resolve(s)
}