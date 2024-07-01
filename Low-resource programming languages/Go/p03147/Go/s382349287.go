package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var in = bufio.NewScanner(os.Stdin)

func NewxtSlice(num int) []int {

	rep := make([]int, num)
	in.Scan()
	ele := strings.Split(in.Text(), " ")
	for i := 0; i < num; i++ {
		n, _ := strconv.Atoi(ele[i])
		rep[i] = n
	}
	return rep
}
func iszero(num []int) bool {
	for _, v := range num {
		if v == 0 {
			return true
		}
	}
	return false
}
func max(num []int) int {
	max := 0
	for _, v := range num {
		if max < v {
			max = v
		}
	}
	return max
}
func isOrder(num []int) bool {
	for i := 1; i < len(num)-1; i++ {
		if num[i] > num[i-1] && num[i] < num[i+1] {
			continue
		} else {
			return false
		}
	}
	return true
}

func main() {
	var N int
	fmt.Scanf("%d\n", &N)

	rep := NewxtSlice(N)
	temp := 0
	count := 0
	var Maxs []int
LABEL1:
	if iszero(rep) {
		for i := 0; i < N; i++ {
		LABEL2:
			if rep[i] == 0 {
				if i == 0 {
					temp = i + 1
				} else {
					if temp == i {
						temp++
						i++
						goto LABEL2
					} else if isOrder(rep[temp:i]) {
						MaxNum := max(rep[temp:i])
						Maxs = append(Maxs, MaxNum)
						temp = i + 1
					} else {
						for iszero(rep[temp:i]) != true {
							for k := temp; k < i; k++ {
								rep[k]--
							}
							count++
						}
						goto LABEL2
					}
				}
			} else if i == N-1 {
				if isOrder(rep[temp:]) {
					MaxNum := max(rep[temp:])
					Maxs = append(Maxs, MaxNum)
				} else {
					for iszero(rep[temp:i+1]) != true {
						for k := temp; k <= i; k++ {
							rep[k]--
						}
						count++
					}
					temptemp := temp
				LABEL3:
					if iszero(rep[temp : i+1]) {
						for t, v := range rep[temp : i+1] {
							if v == 0 {
								Maxs = append(Maxs, max(rep[temp:temp+t]))
								temp = temp + t + 1
								goto LABEL3
							}
						}
					}
					temp = temptemp
					temp++

					goto LABEL2
				}
			}

		}
	} else {
		for iszero(rep) != true {
			for i := 0; i < len(rep); i++ {
				rep[i]--
			}
			count++
			goto LABEL1
		}
	}

	ans := 0
	for _, v := range Maxs {
		ans += v
	}
	ans += count
	fmt.Println(ans)
}