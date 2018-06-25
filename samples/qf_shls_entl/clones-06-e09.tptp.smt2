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
(declare-fun x25() RefSll_t)
(declare-fun x26() RefSll_t)
(declare-fun x27() RefSll_t)
(declare-fun x28() RefSll_t)

(assert 
		(and 

			(distinct nil x1)
			(distinct nil x2)
			(distinct nil x3)
			(distinct x1 x2)
			(distinct x2 x3)
			(distinct nil x5)
			(distinct nil x6)
			(distinct nil x7)
			(distinct x5 x6)
			(distinct x6 x7)
			(distinct nil x9)
			(distinct nil x10)
			(distinct nil x11)
			(distinct x9 x10)
			(distinct x10 x11)
			(distinct nil x13)
			(distinct nil x14)
			(distinct nil x15)
			(distinct x13 x14)
			(distinct x14 x15)
			(distinct nil x17)
			(distinct nil x18)
			(distinct nil x19)
			(distinct x17 x18)
			(distinct x18 x19)
			(distinct nil x21)
			(distinct nil x22)
			(distinct nil x23)
			(distinct x21 x22)
			(distinct x22 x23)
		(tobool (ssep 
			(ls x23 x21 )
			(pto x21 (ref next x23 ))
			(ls x19 x17 )
			(pto x17 (ref next x19 ))
			(ls x15 x13 )
			(pto x13 (ref next x15 ))
			(ls x11 x9 )
			(pto x9 (ref next x11 ))
			(ls x7 x5 )
			(pto x5 (ref next x7 ))
			(ls x3 x1 )
			(pto x1 (ref next x3 ))
		)

		)

) )

(assert (not 
		(tobool (ssep 
			(ls x24 x21 )
			(pto x21 (ref next x24 ))
			(ls x20 x17 )
			(pto x17 (ref next x20 ))
			(ls x16 x13 )
			(pto x13 (ref next x16 ))
			(ls x12 x9 )
			(pto x9 (ref next x12 ))
			(ls x8 x5 )
			(pto x5 (ref next x8 ))
			(ls x4 x1 )
			(pto x1 (ref next x4 ))
		)

) ))

(check-sat)
;   sat