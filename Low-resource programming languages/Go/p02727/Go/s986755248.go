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
                if len(right) == r || (len(left) > l && left[l] <= right[r]){
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
	var x,y,a,b,c,ans_red,ans_green int
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
	//red
	red:=a-1
	gre:=b-1
	mu:=c-1
	for i:=0 ; i<x ;i++ {
		if mu < 0|| sort_p[red] >= sort_r[mu]{
			ans_red += sort_p[red]
//fmt.Println(sort_p[red])
			red--
		} else {
			ans_red += sort_r[mu]
//fmt.Println(sort_r[mu])
			mu--
		}
	}
	for j:=0 ; j<y ; j++ {
		if mu < 0  || sort_q[gre] >= sort_r[mu] {
			ans_red += sort_q[gre]
//fmt.Println(sort_q[gre])
			gre--
		} else {
			ans_red += sort_r[mu]
//fmt.Println(sort_r[mu])
			mu--
		}
	}
//fmt.Println("green")
	red = a-1
	gre = b-1
	mu = c-1
	for j:=0 ; j<y ; j++ {
		if mu < 0 || sort_q[gre] >= sort_r[mu] {
			ans_green += sort_q[gre]
//fmt.Println(sort_q[gre])
                        gre--
                } else {
                        ans_green += sort_r[mu]
//fmt.Println(sort_r[mu])
			mu--
                }
        }
	for i:=0 ; i<x ;i++ {
		if mu < 0 || sort_p[red] >= sort_r[mu] {
                        ans_green += sort_p[red]
//fmt.Println(sort_p[red])
                        red--
                } else {
                        ans_green += sort_r[mu]
//fmt.Println(sort_r[mu])
                        mu--
		}
        }
	if ans_red >= ans_green {
		fmt.Println(ans_red)
	} else {
		fmt.Println(ans_green)
	}
}







