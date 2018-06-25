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
(declare-fun const_0() RefSll_t)
(declare-fun const_1() RefSll_t)
(declare-fun const_2() RefSll_t)
(declare-fun const_3() RefSll_t)
(declare-fun const_4() RefSll_t)

(assert 
		(and 

			(tobool emp)
		)

)

(assert (not 
		(and 
			(= const_1 const_1)
			(tobool emp)
		)

))

(check-sat)
;   unsat