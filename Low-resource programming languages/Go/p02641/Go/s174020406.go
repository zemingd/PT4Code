package main

import(
	"fmt"
	"math"
)

func quickSort(values []int) (ret []int) {
	if len(values)<2 {
		return values
	}
	pivot := values[0]
	
	left := []int{}
	right := []int{}
	for _,v := range values[1:] {
		if v>pivot {
			right = append(right, v)
		} else {
			left = append(left, v)
		}
	}
	left = quickSort(left)
	right = quickSort(right)
	ret = append(left, pivot)
	ret = append(ret, right...)
	return 
}

func binarySearch(needle int, haystack []int) (int,bool) {
    low := 0
    high := len(haystack) - 1
    for low <= high{
        median := (low + high) / 2
 
        if haystack[median] < needle {
            low = median + 1
        }else{
            high = median - 1
        }
    }
    if low == len(haystack) || haystack[low] != needle {
        return -1,false
    }
    return low, true
}

func max(nums ...int) int {
    if len(nums) == 0 {
        panic("funciton max() requires at least one argument.")
    }
    res := nums[0]
    for i:=0; i<len(nums); i++ {
        res = int(math.Max(float64(res), float64(nums[i])))
    }
    return res
}

func main() {
	var x, n int
	fmt.Scan(&x,&n)
	p := make([]int, n)
	for i:=0;i<n;i++ {
		var tmp int
		fmt.Scan(&tmp)
		p[i] = tmp
	}
	if len(p)>0 {
		p = quickSort(p)
		idx,found := binarySearch(x,p)
		
		// tmp := max(idx,n-idx)
		if found {
			for i:=1; i<n+1; i++ {
				
				if idx-i>=0 {
					if p[idx-i]!=x-i {
						fmt.Println(x-i)
						break
					}
				} else {
					fmt.Println(p[0]-1)
					break
				}
				if idx+i<n {
					if p[idx+i]!=x+i {
						fmt.Println(x+i)
						break
					}
				} else {
					fmt.Println(p[n-1]+1)
					break
				}
			}
		} else {
			fmt.Println(x)
		}
	} else {
		fmt.Println(x)
	}
	
}