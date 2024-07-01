package main

import (
	"fmt"
//	"strconv"
//	"sort"
//	"math"
//	"regexp"
)


var a,b,x uint64

func main(){
	fmt.Scan(&a,&b,&x)

	var m uint64 = (a-1) /x
	var n uint64 = b /x

	fmt.Println(n-m)
}