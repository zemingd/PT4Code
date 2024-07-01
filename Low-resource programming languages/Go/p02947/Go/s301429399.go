package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
    "sort"
)

var sc = bufio.NewScanner(os.Stdin)

func anagccomp(a string, b string) bool{
    var seped_a, seped_b []string

    for _, sep_a := range a {
        seped_a = append(seped_a, string(sep_a))
    }

    for _, sep_b := range b {
        seped_b = append(seped_b, string(sep_b))
    }

    sort.Strings(seped_a)
    sort.Strings(seped_b)

    //this for statement is compareing a couple of slices
    //because slice can not use for compare directly
    for i:=0; i < len(a); i++ {
        if seped_a[i] != seped_b[i] {
            return false
        }
    }
    return true

}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func main() {
    var _, _ = strconv.Atoi(sc.Text())

    var strings []string

    for sc.Scan() {
        strings = append(strings, sc.Text())
    }

    var analocout int

    for i, _ := range strings {
        for j:= i+1; j< len(strings); j++ {
            if anagccomp(strings[i], strings[j]) {
                analocout++
            }
        }
    }

    fmt.Println(analocout)
}
