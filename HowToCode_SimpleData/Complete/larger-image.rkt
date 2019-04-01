;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname larger-image) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image, Image -> Boolean
;; produces true if the first image is larger than the second
(check-expect (largerImage
               (rectangle 20 10 "solid" "black")
               (rectangle 20 20 "solid" "black"))
              false)
(check-expect (largerImage
               (rectangle 10 20 "solid" "black")
               (rectangle 20 20 "solid" "black"))
              false)
(check-expect (largerImage
               (rectangle 20 20 "solid" "black")
               (rectangle 20 20 "solid" "black"))
              false)
(check-expect (largerImage
               (rectangle 20 30 "solid" "black")
               (rectangle 20 20 "solid" "black"))
              true)
(check-expect (largerImage
               (rectangle 30 20 "solid" "black")
               (rectangle 20 20 "solid" "black"))
              true)

;(define (largerImage img1 img2) false) ;; stub

;(define (largerImage img1 img2) ;; template 
;  (... img1 ... img2))

(define (largerImage img1 img2)
  (> (* (image-width img1)
        (image-height img1))
     (* (image-width img2)
        (image-height img2))))
