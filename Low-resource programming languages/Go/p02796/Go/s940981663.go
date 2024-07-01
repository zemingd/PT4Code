package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

type eadge struct {
	start int
	end   int
}

type eadgeArray []eadge

func (a eadgeArray) Len() int {
	return len(a)
}

func (a eadgeArray) Less(i, j int) bool {
	return a[i].start < a[j].start
}

func (a eadgeArray) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	eadges := []eadge{}
	for scanner.Scan() {
		array := strings.Split(scanner.Text(), " ")
		robot, _ := strconv.Atoi(array[0])
		arm, _ := strconv.Atoi(array[1])
		var s int
		if robot < arm {
			s = 0
		} else {
			s = robot - arm
		}
		e := eadge{
			s,
			robot + arm - 1,
		}
		eadges = append(eadges, e)
	}
	//sort
	sort.Sort(eadgeArray(eadges))

	fmt.Println(eadges)

	cnt := 0
	prev := eadges[0]
	eadges = eadges[1:]
	for _, e := range eadges {
		if prev.end < e.start {
			//no overlap
			prev = e
			cnt++
			continue
		}
		fmt.Println(e)
		//overlap
		if prev.end < e.end {
			//keep pre
			continue
		}
		//change
		prev = e
	}
	cnt++
	fmt.Println(cnt)
}
