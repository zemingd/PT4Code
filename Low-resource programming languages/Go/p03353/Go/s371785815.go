package main

import (
	"fmt"
	"sort"
)

func main(){
	var s string
	fmt.Scan(&s)
	var K int
	fmt.Scan(&K)
	sli := []string{}
	l := len(s)
	for i:=0; i<l; i++ {
		ch := true
		for x := range sli {
			if string(sli[x]) == string(s[i]){
				ch = false
			}
		}
		if ch {
			sli = append(sli, string(s[i]))
		}

		tmp := string(s[i])
		for n:=i+1; n<l; n++ {
			tmp += string(s[n])
			ch = true
			for x := range sli {
				if string(sli[x]) == tmp{
					ch = false
				}
			}
			if ch {
				sli = append(sli, tmp)
			}
		}
	}

	sort.Strings(sli)
	fmt.Println(sli[K-1])
}