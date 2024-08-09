company(appy).
company(sumsum).
smart_phone_technology(galatica_s3).

competitor(sumsum, appy).
develop(sumsum, galatica_s3).
steal(stevey, galatica_s3).
boss(stevey, appy).

business(X) :-
          smart_phone_technology(X).
unethical(A) :-
          boss(A, X),
          competitor(Y, X),
          develop(Y, B),
          steal(A, B).
