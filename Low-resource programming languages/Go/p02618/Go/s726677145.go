package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"strings"
	"time"
)

func maxInt(a [26]int) (maxIndex int) {
	max := 0
	maxIndex = 0
	for index, n := range a {
		if max < n {
			max = n
			maxIndex = index
		}
	}
	return
}

func last(d, i int, r [365]int) int {
	for j := d; j > 0; j-- {
		if r[j-1] == i {
			return j
		}
	}
	return 0
}

func increaseSatisfaction(held int, scoreList [26]int) int {
	return scoreList[held]
}

func decreaseSatisfaction(d int, s [365][26]int, c [26]int, r [365]int) int {
	// 1~d
	score := 0
	for t := 0; t < 26; t++ {
		score += c[t] * (d - last(d, t, r))
	}
	return -score
}

func shuffle(data [365]int) [365]int {
	n := 365
	r_new := data
	j := rand.Intn(n)
	i := rand.Intn(n)
	r_new[i], r_new[j] = r_new[j], r_new[i]
	return r_new
}

func main() {
	rand.Seed(time.Now().UTC().UnixNano())

	numDay := 365
	lastHeldDays := [365]int{}
	score := 0
	c := [26]int{}
	s := [365][26]int{}
	r := [365]int{}

	for i := range r {
		r[i] = rand.Intn(26) + 1
	}
	for d := 0; d < numDay; d++ {
		r[d] = maxInt(s[d]) + 1
	}

	r_new := [365]int{}

	r_new = shuffle(r)

	for i := 0; i < numDay; i++ {
		lastHeldDays[i] = 0
	}

	sc := bufio.NewScanner(os.Stdin)

	// Scan D
	if !sc.Scan() {
		panic("wrong input for D")
	}

	// Scan C
	cStr := ""
	if sc.Scan() {
		cStr = sc.Text()
		cArray := strings.Split(cStr, " ")
		for i, cE := range cArray {
			c[i], _ = strconv.Atoi(cE)
		}
	}

	// Scan S
	sStr := ""
	for i := 0; i < numDay; i++ {
		if sc.Scan() {
			sStr = sc.Text()
			sArray := strings.Split(sStr, " ")
			for j, sE := range sArray {
				s[i][j], _ = strconv.Atoi(sE)
			}
		}
	}

	// init first r
	for d := 0; d < numDay; d++ {
		r_new[d] = maxInt(s[d]) + 1
	}

	// Search Best
	testCount := 50000
	currentScore := -100000000
	for count := 0; count < testCount; count++ {
		score = 0
		for d := 1; d <= numDay; d++ {
			score += increaseSatisfaction(r_new[d-1]-1, s[d-1])
			score += decreaseSatisfaction(d, s, c, r_new)
		}
		if currentScore < score {
			r = r_new
			currentScore = score
			//			fmt.Printf("score updated %d\n", currentScore)
		}
		r_new = shuffle(r)
	}

	for i := 0; i < 365; i++ {
		fmt.Println(r_new[i])
	}

}
