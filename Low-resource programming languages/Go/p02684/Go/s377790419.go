package main

import "fmt"

type tele struct {
	name int
	saki int
	v int
}

func main(){
	var n,k,visit_city int
	var city,bef int
	fmt.Scan(&n,&k)
	a := make([]tele,n+1)
	for i:=1 ; i<=n ; i++ {
		a[i].name = i
		fmt.Scan(&a[i].saki)
	}
//fmt.Println(a)
	a[1].v = 1
	city = 1
	visit_city++
	for ;; {
//fmt.Println(a)
		if k == visit_city {
			fmt.Println(city)
			break
		}
		bef = city
		city = a[bef].saki
		if a[city].v == 0 {
			//行ったことない
			//bef = city
			//city = a[bef.saki]
			a[city].v = a[bef].v+1
			visit_city++
//fmt.Println(city)
			continue
		} else {
			//行ったことある
			k -= (a[city].v-1)
			k = k%(visit_city - a[city].v + 1)
			for i:=0 ; i<k ; i++ {
				city = a[city].saki
			}
			fmt.Println(city)
			break
		}
	}
}
