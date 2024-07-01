package main

import "fmt"

type iwashi struct {
	taste int
	smell int
}

func log(fish []iwashi, Case []int, count int, iwa int) int {
	var c1,c2 int
	n := 1000000007
	if iwa == len(fish) {
		if len(Case) > 0 {
			return 1
		}
		return 0
	}
	//入れる
	//既に仲の悪いやつはいるか
	good := true
	for i:=0 ; i<len(Case) ; i++ {
		if fish[iwa].taste*fish[Case[i]].taste + fish[iwa].smell*fish[Case[i]].smell == 0 {
			good = false
		}
	}
		//仲が悪いやつがいたから入れない
	if good {
		//入れるCan
		c1 = (log(fish, append(Case,iwa), count, iwa+1))%n
	}
	//入れない
	c2 = (log(fish, Case, count ,iwa+1))%n
	return (c1+c2)%n
}

/*func modinv(a int, n int) int {
	n := 1000000007
//nを法としたaの逆元を求める。nは素数でないといけないことに注意
//a^(n-1)=1 mod n より a*(a^(n-2)) = 1 よって a^(n-2)を求める
        m := n-2
        res := 1
        for ;m>0; {
//fmt.Println(m,a,res,m&1)
                if m&1 == 1{
                        res = (res*a)%n
                }
                a = (a*a)%n
                m >>= 1
        }
        return res
}*/

/*func pow2(x int) int {
	n := 1000000007
	//2^x%n
	m := x-2
	res := 1
	for ;m>0; {
		if m&1 == 1 {
			res = (res*a)%n
		}
		a = (a*a)%n
		m >>= 1
	}
	return res
}*/

func main(){
	var n int
	fmt.Scan(&n)
	fish := make([]iwashi,n)
	for i:=0 ; i<n ; i++ {
		fmt.Scan(&fish[i].taste,&fish[i].smell)
	}
//fmt.Println(fish)
	var temp []int
	c := log(fish,temp,0,0)
	fmt.Println(c)
}
