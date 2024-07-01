package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"sort"
	"strconv"
	"strings"
	"time"
)

var sc = bufio.NewScanner(os.Stdin)

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func main() {
	// n
	var str string
	if sc.Scan() {
		str = sc.Text()
	}
	n, _ := strconv.Atoi(str)
	// hp
	if sc.Scan() {
		str = sc.Text()
	}
	hpp := strings.Split(str, " ")
	var hp []int
	for _, v := range hpp {
		num, _ := strconv.Atoi(v)
		hp = append(hp, num)
	}

	for {
		var b bool
		b = false
		sort.SliceStable(hp, func(i, j int) bool { return hp[i] > hp[j] })
		for i, v := range hp {
			if v <= 0 {
				n = i + 1
			}
			if i == 1 && v <= 0 {
				b = true
			}
		}
		if b {
			break
		}
		rand.Seed(time.Now().UnixNano())
		attacker := rand.Intn(n)
		victim := rand.Intn(n)
		// fmt.Println(attacker, victim, n)
		if hp[attacker] >= 1 && hp[victim] >= 1 {
			hp[victim] = hp[victim] - hp[attacker]
		}
	}
	fmt.Println(hp[0])
}