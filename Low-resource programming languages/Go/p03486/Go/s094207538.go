package main

import (
        "fmt"
        "sort"
)

func main() {
        var s, t string
        fmt.Scan(&s, &t)
        sSlice, tSlice := []byte(s), []byte(t)
        sortAsc(sSlice)
        sortDesc(tSlice)
        sortedSStr := string(sSlice)
        sortedTStr := string(tSlice)
        if sortedSStr < sortedTStr {
                fmt.Printf("Yes")
        } else {
                fmt.Printf("No")
        }
}

func sortAsc(input []byte) {
        sort.Sort(ByteSlice(input))
}
func sortDesc(input []byte) {
        sort.Sort(sort.Reverse(ByteSlice(input)))
}

type ByteSlice []byte

func (s ByteSlice) Len() int {
        return len(s)
}
func (s ByteSlice) Less(i, j int) bool {
        return []byte(s)[i] < []byte(s)[j]
}
func (s ByteSlice) Swap(i, j int) {
        []byte(s)[i], []byte(s)[j] = []byte(s)[j], []byte(s)[i]
}