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
(declare-fun x14() RefSll_t)
(declare-fun x15() RefSll_t)
(declare-fun x16() RefSll_t)
(declare-fun x17() RefSll_t)
(declare-fun x18() RefSll_t)
(declare-fun x19() RefSll_t)
(declare-fun x20() RefSll_t)
(declare-fun x21() RefSll_t)

(assert 
		(and 

			(distinct x6 x8)
			(distinct x6 x11)
			(distinct x6 x16)
			(distinct x11 x17)
			(distinct x3 x4)
			(distinct x3 x11)
			(distinct x3 x7)
			(distinct x3 x13)
			(distinct x3 x9)
			(distinct x3 x15)
			(distinct x9 x13)
			(distinct x9 x17)
			(distinct x4 x16)
			(distinct x1 x14)
			(distinct x13 x16)
		(tobool (ssep 
			(ls x10 x12 )
			(ls x16 x14 )
			(ls x16 x1 )
			(ls x1 x3 )
			(ls x1 x8 )
			(ls x17 x14 )
			(ls x17 x16 )
			(ls x12 x10 )
			(ls x12 x9 )
			(ls x12 x1 )
			(ls x2 x8 )
			(ls x9 x15 )
			(ls x7 x4 )
			(ls x3 x14 )
		)

		)

) )

(check-sat)
;   sat