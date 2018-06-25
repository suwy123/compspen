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
			(distinct x6 x19)
			(distinct x6 x17)
			(distinct x3 x16)
			(distinct x3 x12)
			(distinct x3 x5)
			(distinct x7 x16)
			(distinct x7 x14)
			(distinct x9 x19)
			(distinct x12 x14)
			(distinct x2 x16)
			(distinct x2 x10)
			(distinct x2 x17)
			(distinct x2 x15)
			(distinct x15 x19)
			(distinct x15 x17)
			(distinct x8 x19)
			(distinct x8 x14)
			(distinct x4 x10)
			(distinct x4 x5)
			(distinct x1 x8)
			(distinct x1 x19)
			(distinct x1 x15)
			(distinct x10 x19)
			(distinct x10 x16)
			(distinct x13 x15)
			(distinct x5 x8)
			(distinct x5 x6)
		(tobool (ssep 
			(ls x5 x1 )
			(ls x16 x9 )
			(ls x19 x17 )
			(ls x13 x5 )
			(ls x13 x15 )
			(ls x18 x15 )
			(ls x18 x5 )
			(ls x1 x4 )
			(ls x8 x9 )
			(ls x8 x3 )
			(ls x14 x10 )
			(ls x15 x17 )
			(ls x2 x1 )
			(ls x12 x15 )
			(ls x9 x1 )
			(ls x7 x15 )
			(ls x3 x7 )
			(ls x11 x1 )
			(ls x6 x10 )
		)

		)

) )

(check-sat)
;   unsat