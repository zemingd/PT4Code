package main

import (
	"bufio"
	"os"
	"strconv"
	"sort"
	"fmt"
	"math"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type D struct {
	d       int
	p       int
	c       int
	max     int
	rate    float64
	notfull bool
}

type DList []D

func (l DList) Len() int {
	return len(l)
}

func (l DList) Less(i, j int) bool {
	return l[i].rate > l[j].rate
}

func (l DList) Swap(i, j int) {
	l[i], l[j] = l[j], l[i]
}

func main() {
	sc.Split(bufio.ScanWords)

	d := nextInt()
	g := nextInt()

	list := make(DList, d)

	for i := 0; i < d; i++ {
		list[i].d = (i + 1) * 100
		list[i].p = nextInt()
		list[i].c = nextInt()
		list[i].max = list[i].d*list[i].p + list[i].c
		list[i].rate = float64(list[i].max) / float64(list[i].p)
	}

	var tmp int = math.MaxInt32
	var count int

	for {
		sort.Sort(list)
		//fmt.Println(list[0])
		if list[0].notfull {
			if g >= list[0].d*list[0].p {
				g -= list[0].max
				count += list[0].p
				list = list[1:]
				if g <= 0 {
					break
				} else {
					continue
				}
			}
			o := list[0]
			i := g / o.d
			if g > o.d*i {
				count += i + 1
			} else {
				count += i
			}
			break
		}

		if list[0].max <= g {
			g -= list[0].max
			count += list[0].p
			list = list[1:]
		} else {
			if count+list[0].p < tmp {
				tmp = count + list[0].p
			}
			list[0].rate = float64(list[0].d)
			list[0].notfull = true
		}

		if g <= 0 {
			break
		}
	}

	if tmp < count {
		count = tmp
	}
	fmt.Println(count)
}
