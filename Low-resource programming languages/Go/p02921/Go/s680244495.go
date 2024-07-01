package main

import (
	"fmt"
	"strings"
)

type ll int64

type part_time_job struct {
	days ll
	paid ll
}

type Bydays []part_time_job
func (a Bydays) Len() int           { return len(a) }
func (a Bydays) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a Bydays) Less(i, j int) bool { return a[i].days <  a[j].days }

type Bypaid []part_time_job
func (a Bypaid) Len() int           { return len(a) }
func (a Bypaid) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a Bypaid) Less(i, j int) bool { return a[i].paid > a[j].paid }


func main() {

	var S,SS string
	fmt.Scan(&S,&SS)

	var ans = 0

	s := strings.Split(S, "") //[]stringに一文字ずつ格納
	ss := strings.Split(SS, "") //[]stringに一文字ずつ格納

	for i := 0 ; i< len(s); i++ {
		if s[i] == ss[i] {
			ans++
		}
	}

	fmt.Println(ans)



}
