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
	if k==1 {
		fmt.Println("1")
	}
//fmt.Println(a)
	a[1].v = 1
	city = 1
	visit_city++
	flag := true
	for i := 2; i<=k ; i++ {
//fmt.Println(a,visit_city)
		/*if k == visit_city {
			fmt.Println(city)
			break
		}*/
		bef = city
		city = a[bef].saki
		if a[city].v == 0 {
			//行ったことない
			//bef = city
			//city = a[bef.saki]
			a[city].v = a[bef].v+1
			visit_city++
			/*if k == visit_city {
				fmt.Println(city)
				break
			}*/
//fmt.Println(city)
			continue
		} else {
			//行ったことある
			/*if k <= visit_city {
//fmt.Println("k small",visit_city)
				city = 1
				for i:=1 ; i<k ; i++ {
					city = a[city].saki
				}
				fmt.Println(city)
				break
			}*/
			k -= (a[city].v-1)
			k = k%(visit_city - a[city].v + 1)
//fmt.Println(k)
			for i:=0 ; i<k ; i++ {
				city = a[city].saki
			}
			fmt.Println(city)
			flag = false
			break
		}
	}
	if flag {
		fmt.Println(city)
	}
}
