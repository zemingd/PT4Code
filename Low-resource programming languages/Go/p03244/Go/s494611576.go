package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func min(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m > v {
			m = v
		}
	}
	return m
}

func max(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m < v {
			m = v
		}
	}
	return m
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for C - /\/\/\/
	var n int
	fmt.Scan(&n)

	sc.Split(bufio.ScanWords)
	v := make([]int, n)
	temp1 := make(map[int]int, n)
	temp2 := make(map[int]int, n)

	var count1, count2 int
	for i := 0; i < n; i++ {
		v[i] = nextInt()
		if i%2 == 0 {
			temp1[v[i]]++
			count1++
		} else {
			temp2[v[i]]++
			count2++
		}
	}
	temp1[1000000] = 0
	temp2[1000000] = 0

	sortTemp1 := make([]int, 0)
	for _, v := range temp1 {
		sortTemp1 = append(sortTemp1, v)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(sortTemp1)))

	sortTemp2 := make([]int, 0)
	for _, v := range temp2 {
		sortTemp2 = append(sortTemp2, v)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(sortTemp2)))

	var maxNum1 int
	for i, v := range temp1 {
		if v == sortTemp1[0] {
			maxNum1 = i
		}
	}

	var maxNum2 int
	for i, v := range temp2 {
		if v == sortTemp2[0] {
			maxNum2 = i
		}
	}

	var ans int
	if maxNum1 != maxNum2 {
		fmt.Println(count1 - temp1[maxNum1] + count2 - temp2[maxNum2])
	} else {
		/*
			if len(temp1) == 1 && len(temp2) == 1 {
				ans = min(count1+count2-temp2[maxNum2], count1-temp1[maxNum1]+count2)
				fmt.Println(ans)
			} else if len(temp1) == 1 && len(temp2) != 1 {
				for i, v := range temp2 {
					if v == sortTemp2[1] {
						maxNum2 = i
					}
				}
				fmt.Println(count1 - temp1[maxNum1] + count2 - temp2[maxNum2])
			} else if len(temp1) != 1 && len(temp2) == 1 {
				for i, v := range temp1 {
					if v == sortTemp1[1] {
						maxNum1 = i
					}
				}
				fmt.Println(count1 - temp1[maxNum1] + count2 - temp2[maxNum2])
			} else {
		*/
		var maxNum1New, maxNum2New int
		for i, v := range temp1 {
			if v == sortTemp1[1] {
				maxNum1New = i
			}
		}
		for i, v := range temp2 {
			if v == sortTemp2[1] {
				maxNum2New = i
			}
		}
		ans = min(count1-temp1[maxNum1]+count2-temp2[maxNum2New], count1-temp1[maxNum1New]+count2-temp2[maxNum2])
		fmt.Println(ans)
		//}
	}
}
