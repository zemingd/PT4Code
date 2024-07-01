package main

import "fmt"

func mergeSort(a []int) []int {
//fmt.Println("Mergesort:",a)
        if len(a) == 1 {
                return a
        }
        n := len(a)
        left := mergeSort(a[:n/2])
        right := mergeSort(a[n/2:])
//fmt.Println("Left;",left," Right:",right)
        var l,r int
        sorted := make([]int,n)
        for i := 0 ; i < n ; i++ {
                if len(right) == r || (len(left) > l && left[l] > right[r]){
                        sorted[i] = left[l]
                        l++
                } else {
                        sorted[i] = right[r]
                        r++
                }
//fmt.Println("Now sorting :",sorted)
        }
        return sorted

}
func main(){
	var x,y,a,b,c,ans,pp,qq,rr,temp int
	fmt.Scan(&x,&y,&a,&b,&c)
	p := make([]int,a)
	q := make([]int,b)
	r := make([]int,c)
	for i := 0 ; i<a ;i++ {
		fmt.Scan(&p[i])
	}
	for i:=0 ; i<b ; i++ {
		fmt.Scan(&q[i])
	}
	for i:=0 ; i<c ; i++ {
		fmt.Scan(&r[i])
	}
	sort_p := mergeSort(p)
	sort_q := mergeSort(q)
	sort_r := mergeSort(r)
	for i:=0 ; i<x+y ; i++ {
		if pp == x{
			if qq == y || sort_q[qq] < sort_r[rr]{
				temp = sort_r[rr]
				rr++
			} else {
				temp = sort_q[qq]
				qq++
			}
		} else if qq == y{
			if sort_p[pp] < sort_r[rr] {
				temp = sort_r[rr]
				rr++
			} else {
				temp = sort_p[pp]
				pp++
			}
		} else if sort_p[pp] < sort_q[qq] {
			if sort_q[qq] < sort_r[rr] {
				temp = sort_r[rr]
				rr++
			} else {
				temp = sort_q[qq]
				qq++
			}
		} else {
			if sort_p[pp] < sort_r[rr] {
				temp = sort_r[rr]
				rr++
			} else {
				temp = sort_p[pp]
				pp++
			}
		}
//fmt.Println(temp)
		ans += temp
	}
	fmt.Println(ans)
}
