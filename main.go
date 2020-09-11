package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	from := ""
	if r.URL != nil {
		from = r.URL.String()
	}
	if from != "/favicon.ico" {
		log.Printf("title: %s\n", "Kaniko demo")
	}

	fmt.Fprintf(w, "Built by Kaniko\n")
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
