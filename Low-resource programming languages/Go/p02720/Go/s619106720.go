package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	k := nextInt()
	var count int
	var backLunluns []int

	for i := 1; i < 10; i++ {
		backLunluns = append(backLunluns, i)
		count++
		if count == k {
			fmt.Println(i)
			return
		}
	}
	for d := 2; ; d++ {
		var lunluns []int
		for i := 0; i < len(backLunluns); i++ {
			str := strconv.Itoa(backLunluns[i])
			last := str[len(str)-1]
			num, _ := strconv.Atoi(string(last))
			v := backLunluns[i]*10 + num
			if v%10 == 0 {
				lunluns = append(lunluns, v)
				count++
				if count == k {
					fmt.Println(v)
					return
				}
				lunluns = append(lunluns, v+1)
				count++
				if count == k {
					fmt.Println(v + 1)
					return
				}
			} else if num == 9 {
				lunluns = append(lunluns, v-1)
				count++
				if count == k {
					fmt.Println(v - 1)
					return
				}
				lunluns = append(lunluns, v)
				count++
				if count == k {
					fmt.Println(v)
					return
				}
			} else {
				lunluns = append(lunluns, v-1)
				count++
				if count == k {
					fmt.Println(v - 1)
					return
				}
				lunluns = append(lunluns, v)
				count++
				if count == k {
					fmt.Println(v)
					return
				}
				lunluns = append(lunluns, v+1)
				count++
				if count == k {
					fmt.Println(v + 1)
					return
				}
			}
		}
		backLunluns = lunluns
	}
	fmt.Println(count)
}
