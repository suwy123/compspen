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

(assert 
		(and 

			(distinct x6 x10)
			(distinct x6 x15)
			(distinct x11 x17)
			(distinct x3 x11)
			(distinct x3 x4)
			(distinct x3 x18)
			(distinct x7 x16)
			(distinct x12 x19)
			(distinct x17 x18)
			(distinct x2 x6)
			(distinct x2 x4)
			(distinct x2 x10)
			(distinct x2 x17)
			(distinct x15 x19)
			(distinct x8 x11)
			(distinct x8 x9)
			(distinct x8 x12)
			(distinct x8 x14)
			(distinct x1 x8)
			(distinct x1 x13)
			(distinct x13 x17)
			(distinct x16 x19)
			(distinct x5 x11)
			(distinct x5 x14)
		(tobool (ssep 
			(ls x5 x2 )
			(ls x5 x8 )
			(ls x19 x14 )
			(ls x19 x9 )
			(ls x10 x9 )
			(ls x10 x18 )
			(ls x18 x10 )
			(ls x18 x7 )
			(ls x15 x17 )
			(ls x15 x9 )
			(ls x15 x1 )
			(ls x12 x1 )
			(ls x12 x6 )
			(ls x17 x6 )
			(ls x2 x3 )
			(ls x9 x16 )
			(ls x3 x15 )
		)

		)

) )

(check-sat)
;   sat