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
(declare-fun x22() RefSll_t)
(declare-fun x23() RefSll_t)
(declare-fun x24() RefSll_t)

(assert 
		(and 

			(distinct x6 x9)
			(distinct x6 x13)
			(distinct x3 x9)
			(distinct x3 x13)
			(distinct x2 x18)
			(distinct x15 x19)
			(distinct x15 x20)
			(distinct x14 x15)
			(distinct x4 x14)
			(distinct x1 x20)
			(distinct x13 x19)
			(distinct x13 x17)
			(distinct x5 x20)
		(tobool (ssep 
			(ls x5 x20 )
			(ls x13 x20 )
			(ls x19 x1 )
			(ls x4 x1 )
			(ls x4 x8 )
			(ls x20 x15 )
			(ls x20 x18 )
			(ls x15 x11 )
			(ls x2 x13 )
			(ls x12 x8 )
			(ls x7 x2 )
			(ls x3 x12 )
			(ls x6 x7 )
		)

		)

) )

(check-sat)
;   sat