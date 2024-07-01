///
// File:  c.go
// Author: ymiyamoto
//
// Created on Wed Dec 26 15:55:47 2018
//
package main

import (
	"fmt"
	"strings"
	"sort"
)

type strs []string

func (s strs) Len()int{
	return len(s)
}

func (s strs) Swap(i, j int){
	s[i], s[j] = s[j], s[i]
}

func (s strs) Less(i, j int)bool{
	return strings.Compare(s[i], s[j]) == -1
}

func find(slice []string, s string) bool {
	for i := range slice {
		if slice[i] == s {
			return true
		}
	}
	return false
}

func main() {
	var s string
	var K int
	fmt.Scan(&s, &K)

	var arr strs
	alpha := "abcdefghijklmnopqrstuvwxyz"
	for i, _ := range alpha {
		c := alpha[i]
		for j := range s {
			if s[j] == c {
				for k := j + 1; k <= len(s) && k <= j+K; k++ {
					if !find(arr, s[j:k]) {
						arr = append(arr, s[j:k])
						}
					}
				}
		}
		if len(arr) >= K {
			sort.Sort(arr)
			fmt.Println(arr[K-1])
			return
		}
	}
}
