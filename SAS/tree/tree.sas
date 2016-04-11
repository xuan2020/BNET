****************************************************************;
******        HP TREE (PROC HPSPLIT) SCORING CODE        ******;
****************************************************************;
 
******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LABEL _NODE_ = 'Node number';
LABEL _LEAF_ = 'Leaf number';
LABEL _WARN_ = 'Warnings';
LABEL P_class4 = 'Predicted: class=4';
LABEL P_class3 = 'Predicted: class=3';
LABEL P_class2 = 'Predicted: class=2';
LABEL P_class1 = 'Predicted: class=1';
LABEL V_class4 = 'Validated: class=4';
LABEL V_class3 = 'Validated: class=3';
LABEL V_class2 = 'Validated: class=2';
LABEL V_class1 = 'Validated: class=1';
 
 _WARN_ = ' ';
 
******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
 
******             ASSIGN OBSERVATION TO NODE             ******;
IF NOT MISSING(n_open_rev_acts) AND ((n_open_rev_acts >=5.5))
 THEN DO;
  IF NOT MISSING(n_open_rev_acts) AND ((n_open_rev_acts <8.5))
 THEN DO;
    _NODE_ = 5;
    _LEAF_ = 1;
    P_class4 = 0.35377217;
    P_class3 = 0.13766156;
    P_class2 = 0.35287045;
    P_class1 = 0.15569582;
    V_class4 = 0.37052506;
    V_class3 = 0.13603819;
    V_class2 = 0.33353222;
    V_class1 = 0.15990453;
  END;
  ELSE DO;
    IF NOT MISSING(d_deptcard) AND ((d_deptcard <0.01))
 THEN DO;
      IF NOT MISSING(PREM_BANKCARD_CRED_LMT) AND ((PREM_BANKCARD_CRED_LMT >=6000))
 THEN DO;
        _NODE_ = 14;
        _LEAF_ = 6;
        P_class4 = 0.28688525;
        P_class3 = 0.26844262;
        P_class2 = 0.32172131;
        P_class1 = 0.12295082;
        V_class4 = 0.29324895;
        V_class3 = 0.24261603;
        V_class2 = 0.32700422;
        V_class1 = 0.1371308;
      END;
      ELSE DO;
        _NODE_ = 13;
        _LEAF_ = 5;
        P_class4 = 0.10749646;
        P_class3 = 0.36916549;
        P_class2 = 0.11173975;
        P_class1 = 0.4115983;
        V_class4 = 0.11678832;
        V_class3 = 0.37226277;
        V_class2 = 0.096350365;
        V_class1 = 0.41459854;
      END;
  END;
  ELSE DO;
    IF NOT MISSING(d_m_snc_mstrec_instl_trd_opn) AND ((d_m_snc_mstrec_instl_trd_opn >=0.01))
 THEN DO;
      _NODE_ = 16;
      _LEAF_ = 7;
      P_class4 = 0.41080196;
      P_class3 = 0.088379705;
      P_class2 = 0.33551555;
      P_class1 = 0.16530278;
      V_class4 = 0.43406593;
      V_class3 = 0.095238095;
      V_class2 = 0.32600733;
      V_class1 = 0.14468864;
    END;
    ELSE DO;
      IF NOT MISSING(STUDENT_hi_CRED_RANGE) AND ((STUDENT_hi_CRED_RANGE >=0.09))
 THEN DO;
        _NODE_ = 18;
        _LEAF_ = 9;
        P_class4 = 0.39318885;
        P_class3 = 0.052631579;
        P_class2 = 0.43034056;
        P_class1 = 0.12383901;
        V_class4 = 0.39940828;
        V_class3 = 0.050295858;
        V_class2 = 0.4408284;
        V_class1 = 0.10946746;
      END;
      ELSE DO;
        _NODE_ = 17;
        _LEAF_ = 8;
        P_class4 = 0.2158561;
        P_class3 = 0.27948035;
        P_class2 = 0.34277149;
        P_class1 = 0.16189207;
        V_class4 = 0.21550284;
        V_class3 = 0.27931841;
        V_class2 = 0.34513866;
        V_class1 = 0.16004009;
      END;
    END;
  END;
END;
END;
ELSE DO;
IF NOT MISSING(d_ratio_bal_to_hi_crdt) AND ((d_ratio_bal_to_hi_crdt >=0.01))
 THEN DO;
  _NODE_ = 4;
  _LEAF_ = 0;
  P_class4 = 0.48280543;
  P_class3 = 0.015987934;
  P_class2 = 0.48733032;
  P_class1 = 0.01387632;
  V_class4 = 0.48764491;
  V_class3 = 0.013727883;
  V_class2 = 0.48352654;
  V_class1 = 0.015100671;
END;
ELSE DO;
  IF NOT MISSING(ratio_bal_to_hi_crdt) AND ((ratio_bal_to_hi_crdt >=99.99000000000001))
 THEN DO;
    _NODE_ = 8;
    _LEAF_ = 2;
    P_class4 = 0.50686499;
    P_class3 = 0.026315789;
    P_class2 = 0.45080092;
    P_class1 = 0.016018307;
    V_class4 = 0.49843913;
    V_class3 = 0.027055151;
    V_class2 = 0.43496358;
    V_class1 = 0.039542144;
  END;
  ELSE DO;
    IF NOT MISSING(D_CA) AND ((D_CA >=0.01))
 THEN DO;
      _NODE_ = 12;
      _LEAF_ = 4;
      P_class4 = 0.49248927;
      P_class3 = 0.026824034;
      P_class2 = 0.44527897;
      P_class1 = 0.035407725;
      V_class4 = 0.4909285;
      V_class3 = 0.020277481;
      V_class2 = 0.45357524;
      V_class1 = 0.035218783;
    END;
    ELSE DO;
      _NODE_ = 11;
      _LEAF_ = 3;
      P_class4 = 0.41709845;
      P_class3 = 0.077843573;
      P_class2 = 0.40180113;
      P_class1 = 0.10325685;
      V_class4 = 0.42755577;
      V_class3 = 0.071586173;
      V_class2 = 0.39323364;
      V_class1 = 0.10762442;
    END;
  END;
END;
END;
****************************************************************;
******     END OF HP TREE (PROC HPSPLIT) SCORING CODE    ******;
****************************************************************;