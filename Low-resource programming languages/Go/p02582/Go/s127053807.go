package main

import (
	"fmt"
)


func main() {
	var s string
	fmt.Scanf("%s", &s)

	if s == "RRR" {fmt.Println(3)}
	if s == "SRR" {fmt.Println(2)}
	if s == "RSR" {fmt.Println(1)}
	if s == "RRS" {fmt.Println(2)}
	if s == "SSR" {fmt.Println(1)}
	if s == "RSS" {fmt.Println(1)}
	if s == "SRS" {fmt.Println(1)}
	if s == "SSS" {fmt.Println(0)}

}
