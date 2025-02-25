data a;
input yield @@;
time=_n_;
cards;
47	64	23	71	38	64	55	41	59	48	71	35	57	40
58	44	80	55	37	74	51	57	50	60	45	57	50	45
25	59	50	71	56	74	50	58	45	54	36	54	48	55
45	57	50	62	44	64	43	52	38	59	55	41	53	49
34	35	54	45	68	38	50	60	39	59	40	57	54	23
;
proc gplot;
plot yield*time;
symbol v=star i=join c=red;
proc arima data=a;
identify var=yield nlag=18;
estimate q=2;   /*在进行模型AR（1）拟合时，将q=2修改为p=1*/
run;
