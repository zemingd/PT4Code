func main() {
	scanner := makeWordScanner()
	n := eGetInt(scanner)
	sum, square := 0, 0
	for i := 0; i < n; i++ {
		d := eGetInt(scanner)
		sum += d
		square += d * d
	}
	fmt.Println(((sum * sum) - square) / 2)
}
