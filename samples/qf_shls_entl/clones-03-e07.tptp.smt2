(set-logic QF_SLID_LC)

(declare-sort RefSll_t 0)

(declare-fun next() (Field RefSll_t RefSll_t))

(define-fun ls ((in RefSll_t) (out RefSll_t)) Space (tospace
    (or (and  (= in out) (tobool emp) )
        (exists ((u RefSll_t))
            (and (tobool (ssep (pto in (ref next u)) (ls u out ) )) )
)  ) ) )

;; variables
(declare-fun x0() RefSll_t)
(declare-fun x1() RefSll_t)
(declare-fun x2() RefSll_t)
(declare-fun x3() RefSll_t)
(declare-fun x4() RefSll_t)
(declare-fun x5() RefSll_t)
(declare-fun x6() RefSll_t)
(declare-fun x7() RefSll_t)
(declare-fun x8() RefSll_t)
(declare-fun x9() RefSll_t)
(declare-fun x10() RefSll_t)
(declare-fun x11() RefSll_t)
(declare-fun x12() RefSll_t)
(declare-fun x13() RefSll_t)

(assert 
		(and 

			(distinct nil x1)
			(distinct nil x2)
			(distinct nil x4)
			(distinct nil x5)
			(distinct nil x7)
			(distinct nil x8)
		(tobool (ssep 
			(ls x7 x8 )
			(pto x8 (ref next x7 ))
			(ls x4 x5 )
			(pto x5 (ref next x4 ))
			(ls x1 x2 )
			(pto x2 (ref next x1 ))
		)

		)

) )

(assert (not 
		(tobool (ssep 
			(ls x9 x8 )
			(pto x8 (ref next x9 ))
			(ls x6 x5 )
			(pto x5 (ref next x6 ))
			(ls x3 x2 )
			(pto x2 (ref next x3 ))
		)

) ))

(check-sat)
;   sat