package main

import (
	"fmt"
	"strconv"
)


func score(A []int, a []int, b []int, c []int, d []int) int {
	score := 0
	for i := 0; i < len(a); i++ {
		if A[b[i]-1]-A[a[i]-1] == c[i] {
			score += d[i]
		}
	}
	return score
}
var max int
var memo map[string]bool
var N int
var M int
func memocheck (A []int) bool{
	n := len(A)
	set := ""
	for i:= 0; i<n; i++{
		set = set + strconv.Itoa(A[i])
	}
	if ok := memo[set]; ok{
		return memo[set]
	} else {
		memo[set] = true
		return false
	}
}
func dfs (A []int, a []int,b []int,c []int,d []int) {
	n := N
	point := score(A,a,b,c,d)
	if (point > max) {
		max = point
	}
	if memocheck(A) {
		return
	}
	//fmt.Printf("check", A,max)
	//fmt.Println("")
	for i := 0; i< n-1; i++ {
		 if(A[i]+1 <= A[i+1]) && A[i]+1 <= M {
			 prA := []int{}
		 	for j:=0; j<n; j++ {
		 		if i == j {
					prA = append(prA,A[j]+1)
				} else {
					prA = append(prA,A[j])
				}
			}
				// prA = append(prA,A[i]+1)
			//for j:= i+1; i<n; i++ {
			//	prA = append(prA,A[j])
			//}
		 	dfs(prA,a,b,c,d)
		 }
	}

	if (A[n-1]+1 <= M) {
		prA := []int{}
		for j:=0; j<n-1; j++ {
			prA = append(prA,A[j])
		}
		prA = append(prA, A[n-1]+1)
		dfs(prA,a,b,c,d)
	}
}

func main() {
	var Q int
	fmt.Scan(&N,&M,&Q)
	max = 0
	memo = map[string]bool{}
	a := make([]int, Q)
	b := make([]int, Q)
	c := make([]int, Q)
	d := make([]int, Q)
	result :=  make([]int, N)
	for i := 0; i < Q; i++ {
		fmt.Scan(&a[i],&b[i],&c[i],&d[i])
	}
	for i := 0; i < N; i++ {
		result[i] += 1
	}
	dfs(result,a,b,c,d)
	fmt.Println(max)
}