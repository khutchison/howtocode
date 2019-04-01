;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralizer) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String
;; produce the given string with either "s" or "es" added to the end
(check-expect (pluralizer "cat") "cats")
(check-expect (pluralizer "loss") "losses")
(check-expect (pluralizer "toe") "toes")

;(define (pluralizer word) "") ; this is the stub

;(define (pluralizer word) ;this is the template
;  (... word))

(define (pluralizer word)
  (if (string=? (substring word (- (string-length word) 1)) "s")
      (string-append word "es")
      (string-append word "s")))